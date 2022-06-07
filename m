Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 185265400CD
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235719AbiFGOL0 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245130AbiFGOLY (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:24 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DAE2A006F
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:23 -0700 (PDT)
Message-ID: <20220607131510.944105399@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611082;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=/t7WuIBGaW4A2oq18w3FHZt2k9hBLLFPfFXB/IW1mQg=;
        b=34q3J/BXAvDOjoPv9lRDQXEo5PcNilPstOK8hC1g4DFT7W0sN0vR9SWXUN2zVV5w8Dng8c
        J4X4pJW5XNEBcy7pblHYPtJEfbz2yRuQpx3CHo+qJypL4XBKDT4F2qNp4697EMqAHtnrUx
        ePJdZ076jdMh3dhylmk5FxAwAvGUPhdv/Ln9a665/MLUB0XwNDM9HzYFqb4D1BDmWcdAIw
        V2w5iJ257rmYVuO8QPKZie7beikd3pF6+So+P3YmPUiWTMwMtz+TAwt/9jz09en1Rrmn72
        v+tAcyV/w/TVrBO+j0NK42rT+NqRxLszoq1dKWJ+qp8RKGL+wMkNzae7YPm2Rw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611082;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=/t7WuIBGaW4A2oq18w3FHZt2k9hBLLFPfFXB/IW1mQg=;
        b=9QNqq3gtB9n2rgBn9mSVvZFIBbDrPOMuyxlOJbGyaYW9cZH+aSMGsytFW7UIZH+4q72mTs
        Yj+o8Qf/f03dlxDg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 10/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_152.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:21 +0200 (CEST)
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

    this software is distributed under the terms of the gnu general public
    license ( gpl ) version 2 as published by the free software foundation
    this software is provided by the copyright holders and contributors as
    is and any express or implied warranties including but not limited to
    the implied warranties of merchantability and fitness for a particular
    purpose are disclaimed in no event shall the copyright owner or
    contributors be liable for any direct indirect incidental special
    exemplary or consequential damages (including but not limited to
    procurement of substitute goods or services loss of use data or
    profits or business interruption) however caused and on any theory of
    liability whether in contract strict liability or tort (including
    negligence or otherwise) arising in any way out of the use of this
    software even if advised of the possibility of such damage

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 include/linux/platform_data/usb-omap.h |   16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

--- a/include/linux/platform_data/usb-omap.h
+++ b/include/linux/platform_data/usb-omap.h
@@ -1,22 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * usb-omap.h - Platform data for the various OMAP USB IPs
  *
  * Copyright (C) 2012 Texas Instruments Incorporated - https://www.ti.com
- *
- * This software is distributed under the terms of the GNU General Public
- * License ("GPL") version 2, as published by the Free Software Foundation.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
- * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
- * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
- * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
- * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
- * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
- * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
- * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
- * POSSIBILITY OF SUCH DAMAGE.
  */
 
 #define OMAP3_HS_USB_PORTS	3

