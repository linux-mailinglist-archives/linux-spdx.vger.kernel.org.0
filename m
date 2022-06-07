Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16A305400CF
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245130AbiFGOL3 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244153AbiFGOL3 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:29 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B792A33A9
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:28 -0700 (PDT)
Message-ID: <20220607131511.177402337@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611087;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=E5WW62+hhLa3QBNwS2n/+lbM6rLA4CIHXqi7IWAFDgs=;
        b=ckyEE/n6Tn/RgrO2WRCmN3afgekQVTU0e7s+Tb8hlbLJsv/7OUs2a80lZB++ycOdtcNwxJ
        0CXjkxPynePNd6NIGk7xAm9GiPJZefibNzMKYPCP4mAxZXvs4nW271ZFgnHU02uGWJiY1b
        OAGrn6h8AeevDNRMi9F5ysscVnwSmbtTfg00LRKPdryrjNTyblR/4D6heV8qD00alU0Rxp
        ZcxyMXRl1dxNjH7OzamrAPH5x7eXZrtd6Ou0ObuKaWVkaw4LQbV+TCcxVa6qxgzuTJ0Zcx
        nz6VhamfKuywHxsZYf3OU8TumVXN5o6ZRleogttFUB+oj5KRZ4edttjGgVL/8Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611087;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=E5WW62+hhLa3QBNwS2n/+lbM6rLA4CIHXqi7IWAFDgs=;
        b=AYZwh1i4OePE7xB8JUdg6NEC2HLClj2d+dPe49+a34WwWN5l6/mLA66rblqTUqtEEp97LY
        xQtyRpN09ZX7dyAw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 14/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_179.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:26 +0200 (CEST)
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

    gpl header start  do not alter or remove copyright notices or this
    file header  this program is free software you can redistribute it
    and/or modify it under the terms of the gnu general public license
    version 2 only as published by the free software foundation  this
    program is distributed in the hope that it will be useful but without
    any warranty without even the implied warranty of merchantability or
    fitness for a particular purpose see the gnu general public license
    version 2 for more details (a copy is included in the license file
    that accompanied this code)  you should have received a copy of the
    gnu general public license version 2 along with this program if not
    see http://www gnu org/licenses  please visit http://www xyratex
    com/contact if you need additional information or have any questions
    gpl header end

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 arch/x86/crypto/crc32-pclmul_asm.S |   22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

--- a/arch/x86/crypto/crc32-pclmul_asm.S
+++ b/arch/x86/crypto/crc32-pclmul_asm.S
@@ -1,24 +1,4 @@
-/* GPL HEADER START
- *
- * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 only,
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details (a copy is included
- * in the LICENSE file that accompanied this code).
- *
- * You should have received a copy of the GNU General Public License
- * version 2 along with this program; If not, see http://www.gnu.org/licenses
- *
- * Please  visit http://www.xyratex.com/contact if you need additional
- * information or have any questions.
- *
- * GPL HEADER END
+/* SPDX-License-Identifier: GPL-2.0-only */
  */
 
 /*

