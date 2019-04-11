package com.crazecoder.openfile.shareintents;

import com.crazecoder.openfile.shareintents.SingleBase;

import io.flutter.plugin.common.PluginRegistry.Registrar;

public class Gmail extends SingleBase {
    private final String packageName = "com.google.android.gm";

    public Gmail(Registrar registrar) {
        super(registrar);
    }

    @Override
    protected String getPackage() {
        return packageName;
    }
}