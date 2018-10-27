package com.client;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.ModelMap;
import org.springframework.ui.Model;
import org.springframework.web.servlet.view.RedirectView;
import org.apache.commons.codec.binary.Base64;
import java.io.*;
import org.json.*;
import java.net.*;

import java.security.interfaces.RSAPublicKey;
import java.security.KeyStore;
import java.security.cert.Certificate;
import com.nimbusds.jwt.SignedJWT;
import com.nimbusds.jose.JWSVerifier;
import com.nimbusds.jose.crypto.RSASSAVerifier;
import org.springframework.core.io.ClassPathResource;
import org.apache.commons.io.IOUtils;

@RestController
public class AppRestVerifier {

    public boolean validateJWTSignature(String jwt)
    {
        try{
            RSAPublicKey publicKey = null;
            String keyfile  = "oidcapp.jks";
            String storepass = "abc123";
            String alias = "oidc";

            InputStream file = this.getClass().getClassLoader().getResourceAsStream(keyfile);
            KeyStore keystore = KeyStore.getInstance(KeyStore.getDefaultType());
            keystore.load(file, storepass.toCharArray());
    
            // Get certificate of public key
            Certificate cert = keystore.getCertificate(alias);
            
            // Get public key
            publicKey = (RSAPublicKey) cert.getPublicKey();
            
            // Received JWT
            String signedJWTAsString = jwt;
    
            SignedJWT signedJWT = SignedJWT.parse(signedJWTAsString);
    
            JWSVerifier verifier = new RSASSAVerifier(publicKey);
    
            return signedJWT.verify(verifier);
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return false;
    }
}