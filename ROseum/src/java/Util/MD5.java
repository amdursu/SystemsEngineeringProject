/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

/**
 *
 * @author iadin
 */
import java.security.MessageDigest;

public class MD5 {

    static byte[] digest;

    public MD5() {
    }

    public static String getHash(String stringToHash) {

        StringBuffer hexString = new StringBuffer();

        byte[] buffer = stringToHash.getBytes();
        try {

            MessageDigest alg = MessageDigest.getInstance("MD5");

            alg.reset();

            alg.update(buffer);

            digest = alg.digest();

        } catch (Exception e) {

        }

        return asHex(digest);
    }

    private static String asHex(byte hash[]) {
        StringBuffer buf = new StringBuffer(hash.length * 2);
        int i;
        for (i = 0; i < hash.length; i++) {
            if (((int) hash[i] & 0xff) < 0x10) {
                buf.append("0");
            }
            buf.append(Long.toString((int) hash[i] & 0xff, 16));
        }
        return buf.toString();
    }
}
