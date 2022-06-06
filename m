Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA2E53EF31
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233456AbiFFUKl (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233262AbiFFUKa (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:30 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A9F41312A1
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:27 -0700 (PDT)
Message-ID: <20220606200810.416116354@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546226;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=OhpGaItdgUvtL11I5AAX6sZLyxqnBUp8Zk0aJI/d8ZI=;
        b=BFd6Y9r3vl3+HMLloB4yZ2O7dYn4T5IjwEEA0X9FpDh+ZEPo+8J+pQ6WSqqMTzlI2V1WR4
        O+DY82bpkSSA0Ro+8i6vW3TSwh5H2sz3xDQ/J12IuWXsahqD6FX5uczPPPC0lMhZRScLKy
        dMFaw4WGnoUd/V1TCF9taliZ6XTamdjwmmyiN4WJF7PTfxRdIAzgniAUkzfzOBsPj1ITUw
        sjaE+sg6gTw6AcZnQALGFZpml0fP+GPdsObGGT6SLEZQB9+ZEY3rxtU7GgeOlzvOgVW8z6
        nFmrr7crf8u5yefmQ3Se1i3nujv/3M39VB0zU/VM6UK1aQ9wszg/gNT5tnoX8A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546226;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=OhpGaItdgUvtL11I5AAX6sZLyxqnBUp8Zk0aJI/d8ZI=;
        b=TZ+GOZaHKMbcHeeyANwMJ8Fr7anFKwEw08SfJU2UUsJlmQFAXnb1DAuYTMhqp8xkTxyGl5
        /mCA9Kg76KB84qBw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 06/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_147.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:25 +0200 (CEST)
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

