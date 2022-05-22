Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 297195303AA
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244894AbiEVOzC (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347589AbiEVOzB (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:55:01 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 896E117AA7
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:55:00 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231299;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=fInSg1LFJH1sqoqptTSkfwdgcx305i3Xh8tCBmNjD0g=;
        b=vMMNqu36Kw8rt4f91APhGNBz/s2hN683YQ0o4qpIvMyZX/HzMxjVt3OfJz57R8W9+bNLQ8
        qx7SgeWxTAm6GmudpbgPAa6sxYBNHRGVx4FgYM9x8qR4+jjC1vqAixnmCF0oaEE9bdBWoh
        bvDizOT2sFd3slm3YRF95rZBWo26qeL/YGUvllpXIFeXIa5uPjDsIZTCEAu4IUrRdNWrl/
        Tx+Fst/sZHdDCG33Gpz/olJGQzKG99VtgfYXA1rmfhKXCQNIxjjdkBVzRB+Y+CKMOOdkkm
        PsoHos7m9PMTfmPzud6f1f0tl2gEPEDJh8I9r0PTtcsgAs1LP8WMwUFB68BWFQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231299;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=fInSg1LFJH1sqoqptTSkfwdgcx305i3Xh8tCBmNjD0g=;
        b=XtqNpvEkXs0Q73Z1jQtHuu35Sr4WHeVuRJLA05UrUvvY6FJebFUfT9wXuQkYzwr4aOCvtc
        4KT2+H6TDDvq26Bw==
To:     Tom Zanussi <zanussi@kernel.org>,
        Karim Yaghmour <karim.yaghmour@opersys.com>
Cc:     linux-spdx@vger.kernel.org
Subject: relay: License cleanup
Message-ID: <165322122630.3770149.12589163038624151820.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:58 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Tom, Karim!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found unspecific GPL license references, which have been
authored by you.

1) this file is released under the gpl

   kernel/relay.c

Can you please either send cleanup patches for the affected files or
indicate which GPLv2 variant you had in mind and I run it through my
cleanup machinery.

Thanks,

	Thomas

