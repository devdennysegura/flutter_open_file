package com.crazecoder.openfile.shareintents;

import com.crazecoder.openfile.shareintents.SingleBase;

import io.flutter.plugin.common.PluginRegistry.Registrar;

import java.util.Map;

public class Whatsapp extends SingleBase {
    private final String packageName = "com.whatsapp";

    public Whatsapp(Registrar registrar) {
        super(registrar);
    }

    @Override
    protected String getPackage() {
        return packageName;
    }
}