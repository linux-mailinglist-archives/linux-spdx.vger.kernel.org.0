Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B78D5304F1
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 19:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344995AbiEVRdp (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 13:33:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238490AbiEVRdo (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 13:33:44 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C8A92DD4F
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 10:33:43 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653240821;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=nKHzMLpDQgycRxr/x7gKZ+yc2P0TuoyfLfjxrhQ2HHo=;
        b=aP6sW5yAVn3mDWBnl/Lpc82nRI+FjghFjtSAJiGqdGUgoNCm9hTphzVGDJCpdUk4YJ3f2h
        RUmn9zXTa5gaueaSV1W+lSGhKwbYkBcl5T6ZM5/7kXoN1893UfvAeiBEr7LW6A8AfhOwkz
        Zre7aXdEf3Hn0khzVw92y/61/xgD0zHDoRsn3TyFEAUvvsnjA64HHSo9kjLFxPVMgpEyF0
        JQG+nf4UcO0OGgxcDq/aH6UA9pgqvl16dNbt9OA6AmUdpCZA6DOZVfmC5YZZbHLTf8aqRN
        O9yRJ+J+a6GOqviLFWEvtfmCwTX6zvw8hzzzBa5Tj482lawT1dyuZZTq4uo3YA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653240821;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=nKHzMLpDQgycRxr/x7gKZ+yc2P0TuoyfLfjxrhQ2HHo=;
        b=NfCxckftgPOyyoVOetKZmgDEjGdIE3UF2YPBvFUqYexyGylrfiwXu/o8uPag3J5lOE01hH
        ufzqqf1SubrKzcAQ==
To:     Doug Ledford <dledford@redhat.com>
Cc:     Richard Fontana <rfontana@redhat.com>,
        Shuah Khan <shuah@kernel.org>,
        Michael Dolan <mdolan@linuxfoundation.org>,
        linux-spdx@vger.kernel.org
Subject: Licensing of mq_open_tests.c
Date:   Sun, 22 May 2022 19:33:40 +0200
Message-ID: <87a6b9iia3.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Folks!

The file tools/testing/selftests/mqueue/mq_open_tests.c which was
authored by Doug is licensed under GPLv3 only.

While this is a user space program it includes a GPLv2 only kernel
header (kselftest.h), which results in a license conflict.

So one of both needs to be relicensed.

Thanks,

        tglx
