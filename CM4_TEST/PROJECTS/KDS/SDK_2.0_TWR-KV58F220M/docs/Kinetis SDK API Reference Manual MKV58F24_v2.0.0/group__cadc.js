var group__cadc =
[
    [ "cadc_config_t", "group__cadc.html#structcadc__config__t", [
      [ "dualConverterScanMode", "group__cadc.html#ac0484ed6820a4d84844219821635b5b8", null ],
      [ "enableSimultaneousMode", "group__cadc.html#ac4e593c8789381663b725e203dd8e61c", null ],
      [ "DMATriggerSoruce", "group__cadc.html#aef89a015a76c0df2afa98d4604da5ef0", null ],
      [ "idleWorkMode", "group__cadc.html#a2f90a0ad1db6cda0945fe9d5fdfa290e", null ],
      [ "powerUpDelay", "group__cadc.html#a655319de8569ea868e61a020bb78586e", null ]
    ] ],
    [ "cadc_converter_config_t", "group__cadc.html#structcadc__converter__config__t", [
      [ "clockDivisor", "group__cadc.html#ab0b49e67b9547aa0bcfbd36d0d3283ad", null ],
      [ "speedMode", "group__cadc.html#abf7b563a28c38adec06fae7b030150b7", null ],
      [ "highReferenceVoltageSource", "group__cadc.html#a8135f5afe5595b4bd65c9f3a7e250e90", null ],
      [ "lowReferenceVoltageSource", "group__cadc.html#a6f8a004f7c0d585f948e97700aaea8b2", null ],
      [ "sampleWindowCount", "group__cadc.html#a3a6475a6cbf168030815a0867fe54de8", null ]
    ] ],
    [ "cadc_sample_config_t", "group__cadc.html#structcadc__sample__config__t", [
      [ "channelNumber", "group__cadc.html#a9b8ae0e5bee3e270c98096d27d3848d3", null ],
      [ "enableDifferentialPair", "group__cadc.html#ad903d94763fa6af2c4030e05e9694ce2", null ],
      [ "channelGain", "group__cadc.html#a36e55d154dc24da1f4cfcc52c0ad3b03", null ],
      [ "zeroCrossingMode", "group__cadc.html#a5b33d0f773becb45b99b2ef4ebef1334", null ],
      [ "highLimitValue", "group__cadc.html#a058d9e89790da97c4de38e14d6acb834", null ],
      [ "lowLimitValue", "group__cadc.html#a07e8532bc749a0de2cd9da817afe5c80", null ],
      [ "offsetValue", "group__cadc.html#a3bf22dae978562a8f1519dca90f5e043", null ],
      [ "enableWaitSync", "group__cadc.html#aeb04d7af6689f6e4fa81af699f43de93", null ]
    ] ],
    [ "FSL_CADC_DRIVER_VERSION", "group__cadc.html#gab4070fa72ff12f4c79895469e3e8319e", null ],
    [ "CADC_SAMPLE_MASK", "group__cadc.html#gae460913e8c875b5bab294433ef92ede8", null ],
    [ "_cadc_status_flags", "group__cadc.html#ga5eb3df2e5c55da95dbf2db991e62ae5f", [
      [ "kCADC_ZeroCrossingFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fa0a240b24642a9524d625c68e305a9e31", null ],
      [ "kCADC_HighLimitFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fac6b2b8e04399dfe52b92212987a5c5a5", null ],
      [ "kCADC_LowLimitFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fa102eed1398ca68818029acfc16fc3ff2", null ],
      [ "kCADC_ConverterAInProgressFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fa3e76db51e84e10139f33adbf4ea7493a", null ],
      [ "kCADC_ConverterBInProgressFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fa0c1612fbce9859e3ee09b63c4784d6f3", null ],
      [ "kCADC_ConverterAEndOfScanFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fa9279d79879b376069e10c95c43536507", null ],
      [ "kCADC_ConverterBEndOfScanFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fa09160b3840d6baa0c8a18b117a9c5fdf", null ],
      [ "kCADC_ConverterAPowerDownFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5faac34b31df9a02e0edf24e812ef0df1d1", null ],
      [ "kCADC_ConverterBPowerDownFlag", "group__cadc.html#gga5eb3df2e5c55da95dbf2db991e62ae5fabe3a9e8eabbe49b4d3bb4a553a52d157", null ]
    ] ],
    [ "_cadc_interrupt_enable", "group__cadc.html#ga4020cd91b0d1b97425cd2d0ef6a66df4", [
      [ "kCADC_ZeroCrossingInterruptEnable", "group__cadc.html#gga4020cd91b0d1b97425cd2d0ef6a66df4ac7192ffde77c819355da00dc297daea6", null ],
      [ "kCADC_HighLimitInterruptEnable", "group__cadc.html#gga4020cd91b0d1b97425cd2d0ef6a66df4af3548b1fc1861f8e59db3419c6d1eaa6", null ],
      [ "kCADC_LowLimitInterruptEnable", "group__cadc.html#gga4020cd91b0d1b97425cd2d0ef6a66df4a851a7646c197f00920a5e14de397672c", null ],
      [ "kCADC_ConverterAEndOfScanInterruptEnable", "group__cadc.html#gga4020cd91b0d1b97425cd2d0ef6a66df4abc1afa391408dd6bf8d054d9dc6c310b", null ],
      [ "kCADC_ConverterBEndOfScanInterruptEnable", "group__cadc.html#gga4020cd91b0d1b97425cd2d0ef6a66df4a40ca78bfd0244956105ad4485428ab7a", null ]
    ] ],
    [ "_cadc_converter_id", "group__cadc.html#gafc10675bb5d9f21784eb6de893891d82", [
      [ "kCADC_ConverterA", "group__cadc.html#ggafc10675bb5d9f21784eb6de893891d82a78d7bc02b4f263a709dd99c5c0f7c205", null ],
      [ "kCADC_ConverterB", "group__cadc.html#ggafc10675bb5d9f21784eb6de893891d82af0194daa44c31a9aabb2400259e8160e", null ]
    ] ],
    [ "cadc_dual_converter_scan_mode_t", "group__cadc.html#gad9c383d864599aa2ae259af10a4c3c8f", [
      [ "kCADC_DualConverterWorkAsOnceSequential", "group__cadc.html#ggad9c383d864599aa2ae259af10a4c3c8fabc8e68e0a417aef805a803093fce9a46", null ],
      [ "kCADC_DualConverterWorkAsOnceParallel", "group__cadc.html#ggad9c383d864599aa2ae259af10a4c3c8fa4f404318218a29dcb07885df72f5c3f7", null ],
      [ "kCADC_DualConverterWorkAsLoopSequential", "group__cadc.html#ggad9c383d864599aa2ae259af10a4c3c8fa098bb5d26fa7e64134fedc1f46b95ae3", null ],
      [ "kCADC_DualConverterWorkAsLoopParallel", "group__cadc.html#ggad9c383d864599aa2ae259af10a4c3c8fa7a4164631c688af549d031944cad392c", null ],
      [ "kCADC_DualConverterWorkAsTriggeredSequential", "group__cadc.html#ggad9c383d864599aa2ae259af10a4c3c8fa66eda1afef6ab40fc4527d4a5c75b348", null ],
      [ "kCADC_DualConverterWorkAsTriggeredParallel", "group__cadc.html#ggad9c383d864599aa2ae259af10a4c3c8fa7f29bc43260b11063fe48b77e61fe984", null ]
    ] ],
    [ "cadc_dma_trigger_source_t", "group__cadc.html#ga526f9c3ce8416d45f602b53abbb1da48", [
      [ "kCADC_DMATriggerSourceAsEndOfScan", "group__cadc.html#gga526f9c3ce8416d45f602b53abbb1da48a11a725de6cb96ae16872989c3592667d", null ],
      [ "kCADC_DMATriggerSourceAsSampleReady", "group__cadc.html#gga526f9c3ce8416d45f602b53abbb1da48a95986fff8e6ab4db4483d05ae42527e1", null ]
    ] ],
    [ "cadc_reference_voltage_source_t", "group__cadc.html#gae6597b970768f273aff0a1329203171e", [
      [ "kCADC_ReferenceVoltageVrefPad", "group__cadc.html#ggae6597b970768f273aff0a1329203171ea355452d78f3a8e9bfc19be4ba7377410", null ],
      [ "kCADC_ReferenceVoltageChannelPad", "group__cadc.html#ggae6597b970768f273aff0a1329203171ea7c6a1cc25deb9bfe13855032d326e979", null ]
    ] ],
    [ "cadc_channel_gain_t", "group__cadc.html#ga3c3101a0402491be0424ced71f3aa273", [
      [ "kCADC_ChannelGainx1", "group__cadc.html#gga3c3101a0402491be0424ced71f3aa273a6cc9e2c43f8645a9b81d4d08273db8b3", null ],
      [ "kCADC_ChannelGainx2", "group__cadc.html#gga3c3101a0402491be0424ced71f3aa273a150096937769f1fa4ed835523077167d", null ],
      [ "kCADC_ChannelGainx4", "group__cadc.html#gga3c3101a0402491be0424ced71f3aa273a9c207e56cf91c23fb0dcb7d34031ea5d", null ]
    ] ],
    [ "cadc_speed_mode_t", "group__cadc.html#ga03a6a3cc82a9615a79b6af48083c3fb1", [
      [ "kCADC_SpeedMode0", "group__cadc.html#gga03a6a3cc82a9615a79b6af48083c3fb1ade0f1ba55ecc76198188671e193b4a23", null ],
      [ "kCADC_SpeedMode1", "group__cadc.html#gga03a6a3cc82a9615a79b6af48083c3fb1a09273f4ba93ab0f1592fa371c1a526ba", null ],
      [ "kCADC_SpeedMode2", "group__cadc.html#gga03a6a3cc82a9615a79b6af48083c3fb1ad5cac023702d03af51bd175f1a8f58b2", null ],
      [ "kCADC_SpeedMode3", "group__cadc.html#gga03a6a3cc82a9615a79b6af48083c3fb1a135be4887c3e675f738545e7037e7995", null ]
    ] ],
    [ "cadc_zero_crossing_mode_t", "group__cadc.html#ga764b5e614babafc35bc4e5c5875e7730", [
      [ "kCADC_ZeroCorssingDisabled", "group__cadc.html#gga764b5e614babafc35bc4e5c5875e7730a0252e1e8bdbdd53a50059340fcfbf10f", null ],
      [ "kCADC_ZeroCorssingForPtoNSign", "group__cadc.html#gga764b5e614babafc35bc4e5c5875e7730afcfe988b28513d8c899026fa3f32d56a", null ],
      [ "kCADC_ZeroCorssingForNtoPSign", "group__cadc.html#gga764b5e614babafc35bc4e5c5875e7730af1565e20f4b2edb6c5fe547ac5f30444", null ],
      [ "kCADC_ZeroCorssingForAnySignChanged", "group__cadc.html#gga764b5e614babafc35bc4e5c5875e7730a2d52a16b3dc5110a820646c0677078e8", null ]
    ] ],
    [ "cadc_idle_work_mode_t", "group__cadc.html#ga143693e8dd6ce2c575e241c2ee9fc4ae", [
      [ "kCADC_IdleKeepNormal", "group__cadc.html#gga143693e8dd6ce2c575e241c2ee9fc4aea1137a1f58be6447e5500599dfd8bdc87", null ],
      [ "kCADC_IdleAutoStandby", "group__cadc.html#gga143693e8dd6ce2c575e241c2ee9fc4aeae5ef305c87cb5441586db21b8d5433b1", null ],
      [ "kCADC_IdleAutoPowerDown", "group__cadc.html#gga143693e8dd6ce2c575e241c2ee9fc4aeac4d00f781fd9978891fa11f81f7c9b11", null ]
    ] ],
    [ "CADC_Init", "group__cadc.html#ga5e7b833fa41440e32da3fe5cf23f8904", null ],
    [ "CADC_GetDefaultConfig", "group__cadc.html#ga75615b9f089e6fdd27312451c247979e", null ],
    [ "CADC_Deinit", "group__cadc.html#ga831ab62a41ea47f968905c37a3936235", null ],
    [ "CADC_SetConverterConfig", "group__cadc.html#ga4c856c5e2b2e00bf655f5c9369bf3fd8", null ],
    [ "CADC_GetDefaultConverterConfig", "group__cadc.html#gaac55aa9b84d031722a04d9e1bce90604", null ],
    [ "CADC_EnableConverter", "group__cadc.html#ga01fce4e1bcac1adb991be321918168e3", null ],
    [ "CADC_EnableConverterSyncInput", "group__cadc.html#ga29d8321d17c5ac264bedbf3e6ab7d728", null ],
    [ "CADC_EnableConverterPower", "group__cadc.html#ga3b4d25e77feee214a6cbb275146b18c5", null ],
    [ "CADC_DoSoftwareTriggerConverter", "group__cadc.html#ga889c393631c86e217fc2af419dc7fea4", null ],
    [ "CADC_EnableConverterDMA", "group__cadc.html#gaa07d07907c03e5746a271902e2c9f4a3", null ],
    [ "CADC_EnableInterrupts", "group__cadc.html#gafdf7ab5a9f4f92656306b767c9d250ee", null ],
    [ "CADC_DisableInterrupts", "group__cadc.html#gafbcab924ad0de50923e4d3ab3e14969e", null ],
    [ "CADC_GetStatusFlags", "group__cadc.html#ga4e28f7b9bed3aa128edefaae15d70994", null ],
    [ "CADC_ClearStatusFlags", "group__cadc.html#ga2253037d0b6d2af52218a2e1b59d10de", null ],
    [ "CADC_SetSampleConfig", "group__cadc.html#ga1c7a55fe94f7885b258928209c769f68", null ],
    [ "CADC_EnableSample", "group__cadc.html#ga87dba5a10c732ff785a0bb27acbeee1e", null ],
    [ "CADC_EnableSampleResultReadyInterrupts", "group__cadc.html#ga51560e60717a6957c2d16f7603ebcf21", null ],
    [ "CADC_GetSampleReadyStatusFlags", "group__cadc.html#gae96ed3ebdf4ee3fec5bdedb88556eef5", null ],
    [ "CADC_GetSampleLowLimitStatusFlags", "group__cadc.html#ga9fa135929736f3afe95c7b6be920273a", null ],
    [ "CADC_ClearSampleLowLimitStatusFlags", "group__cadc.html#ga6923f088359468c9e4487d58262f7e4d", null ],
    [ "CADC_GetSampleHighLimitStatusFlags", "group__cadc.html#ga4c32c0a3e5adf1d70ac5423d860ac269", null ],
    [ "CADC_ClearSampleHighLimitStatusFlags", "group__cadc.html#ga1583edbfba00886620d27f90e03557e5", null ],
    [ "CADC_GetSampleZeroCrossingStatusFlags", "group__cadc.html#gaac0856f2a2d6e60b834b63b77ad993e4", null ],
    [ "CADC_ClearSampleZeroCrossingStatusFlags", "group__cadc.html#ga9e5edb0a84d25414566a9e6ab8c9db2f", null ],
    [ "CADC_GetSampleResultValue", "group__cadc.html#ga5efae7627ba5a5a3ad8166740cb53a57", null ]
];