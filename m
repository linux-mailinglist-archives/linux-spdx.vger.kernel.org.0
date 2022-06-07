Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42F005400F8
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233040AbiFGOM5 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245143AbiFGOLW (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:22 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC85BA006F
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:20 -0700 (PDT)
Message-ID: <20220607131510.826414014@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611079;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=aMTrcSdyZekHPb+s3fkxTGnIKdsZ0BbDavqMeqApFSk=;
        b=oycHaW53EIepfEKevYN7OusODw0E6mETFvlAMQk0SsEgNrZzf7ZMOkNT+vjs9W+m3w4Ap5
        ylkHdRg6MOGr4QG9ks6J4WFoAtF8si8k+2Cc8DXr4zqnL08z7CMgMg3v+JXfLId+Hjuzsw
        fw7Smv0J8l08qC2FELESZtvwWuR8gy46G4qVKZ/EGVxuF6FoYnF3/YFaPiR5Y6S2tUjik0
        cPhjgkaDV7LFoHNdaZXndxXdt54xKcbQv+UgizF8lwn+lNS7M4p6KASBTBVxYa+Z95oinp
        4cDgqgWn2+RKqIJhCqkE1JLcuBggO617QVQR9AcFQO4aa5hgVm+sdeYrLdqHIw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611079;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=aMTrcSdyZekHPb+s3fkxTGnIKdsZ0BbDavqMeqApFSk=;
        b=Kq+AojSw7sHl8WO++8UkRq6vU5mXTIrb1XpNhuQddKL0VfZx0v22nXW3Bu5tcmwrpZ/QZ1
        syKYO1NDfRkoShAQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 08/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_147.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:19 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    licensed under gplv2

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 Documentation/arm/samsung-s3c24xx/cpufreq.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/Documentation/arm/samsung-s3c24xx/cpufreq.rst
+++ b/Documentation/arm/samsung-s3c24xx/cpufreq.rst
@@ -1,3 +1,4 @@
+.. SPDX-License-Identifier: GPL-2.0-only
 =======================
 S3C24XX CPUfreq support
 =======================
@@ -73,4 +74,3 @@ Document Author
 ---------------
 
 Ben Dooks, Copyright 2009 Simtec Electronics
-Licensed under GPLv2

