Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8886E53EF40
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232270AbiFFULH (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:11:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233226AbiFFULA (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:11:00 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7A0013745B
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:53 -0700 (PDT)
Message-ID: <20220606200811.419929815@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546252;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=uZudNkUU5J+hNBia+Qk9t/1sGIu9snOzMJo5duQSnZE=;
        b=VGE+kpu5d/tvZVe2g4P5MjLYRAnIrX9En6mOZ03dspzo05YF/FPdUQGIKzeuh/65aBZl8L
        RnHt8XS85hCIaWAgErtHiuVWaJKFSNXBwVI3GvU35IP+ZPQXpzT+95/EmeS4HXHXbyoP1N
        agifltvMH3oBM2H2TSwU90FqIVNUgYGEIj6L6Kvefy+x+R3WWkzyu4E2IKpfNhd/JVAfCO
        BVVtvsBW7XPAr1pfvyCtI0kD+bXnQS6VMg4x7F98UxT+1TquyaVrgJelE5Tqejz1qzl9aH
        4FMuP/kmrO6uDNsXyWPbQ6oyDET/ZpE1oswp70XkTu2hn78ElGsRa1FA6Wi6aQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546252;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=uZudNkUU5J+hNBia+Qk9t/1sGIu9snOzMJo5duQSnZE=;
        b=1u999Mw2QcRIt+wJiO0cwI4+W3fL0MkfIT/UNglNd1/dWNSbyZK3HY+5rELel7+SkTX01W
        M8uF29TEVKsZ3gCg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 23/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_398.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:52 +0200 (CEST)
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

    this file is licensed under the terms of the gnu general public
    license version 2 this program as licensed as is without any warranty
    of any kind whether express or implied

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/powerpc/kernel/kgdb.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

--- a/arch/powerpc/kernel/kgdb.c
+++ b/arch/powerpc/kernel/kgdb.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * PowerPC backend to the KGDB stub.
  *
@@ -8,10 +9,6 @@
  * PPC32 support restored by Vitaly Wool <vwool@ru.mvista.com> and
  * Sergei Shtylyov <sshtylyov@ru.mvista.com>
  * Copyright (C) 2007-2008 Wind River Systems, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program as licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 
 #include <linux/kernel.h>

