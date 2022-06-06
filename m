Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB3AB53EF34
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233422AbiFFUKv (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233319AbiFFUKh (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:37 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69CA513392E
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:30 -0700 (PDT)
Message-ID: <20220606200810.530587821@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546229;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=StBLoVofqQDJYIAtXCwhOkWoEZtVnVRJEDfSi407tLk=;
        b=N+B/TlNvZSRsw57+SxBzSAqYNOPEDqJwyzEjXnFPwwL+EAYZLwGEqnvYaB/fvXPc513wbd
        1C1LgIEukr1djCYwcE2ft5u6HdcNJn8qc0BAAX7DZa+AzyjPFUVi+nY6vjUlw5LjB9PDFi
        Mh0CYiq12uB96bueYFBItrTksTYYeSBmgZ+XMNzjfdgMtlpOYb006dOg1RxeqmsDSjDGg+
        fs/02QyPcFFn6i4bwF3f9mwq8t+NMEOlXoP9pOoTDTKYMKwd+n0lixfugDTaADsn3vqcX5
        Z3TfUGcBFm5SgByBMO8Cxp8DqMGaBxZRMtgOI6fgQSj4TnMzYH2FJ1CISx3pBA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546229;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=StBLoVofqQDJYIAtXCwhOkWoEZtVnVRJEDfSi407tLk=;
        b=Wx7I3K9eqkSgFArHZx4k6ynDDPCtnLi45fnfUwmxfTZcXF5wSH3oGrqRNODoIy95EswM7t
        ndIWQJ9jaTzZeRDw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 08/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_152.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:28 +0200 (CEST)
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

