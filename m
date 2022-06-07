Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF2FF5400CC
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245131AbiFGOL0 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235719AbiFGOLX (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:23 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DBA5A0D33
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:22 -0700 (PDT)
Message-ID: <20220607131510.883551799@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611080;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=akhvOq0CGY+L6lDCrfTOQ41/N+FzM87VEILyjZ4ne00=;
        b=4hwU10Q7zrSIN/v5ESt4HHVBgxXvGppswm0p0N6Bd5MikQdkRr0PHGTm+bsuAZwEWWBh8g
        5Rlb5sDh/+mBFnylmVNJ+4AfaDioG6sAsGlPfb2gQ6uDN7dNzWEr44sB7zBprGdfLiyuce
        zB15QuRIG4Gj+ecqw1eA1zYOS6aPXC+MRG0VQA4UUAGcWWxQBE8Nb3U5EJ38UtheKKlHxq
        QRuU95g7+CF2Om00P7TrJbmHesfKYsaQKJJNPFKJjxBR9fXWZjk+BOLspEgLrw6Sf2DvJH
        aXhHSekLd6Gkp+DKQFlmm04X0Pu5pwZl7RZARH+rnIhn7TSZEZk+pn4t2sEzkQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611080;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=akhvOq0CGY+L6lDCrfTOQ41/N+FzM87VEILyjZ4ne00=;
        b=fULYUylRTUBtbxjsLLflztuwerRxdRnh8MGvQFjgS03Ngr1VqxFSxxeSSATHkeJlSte2LS
        e7k0u6BeyE6bzNBg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 09/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_149.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:20 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    netapp provides this source code under the gpl v2 license the gpl v2
    license is available at https://opensource org/licenses/gpl-license
    php  this software is provided by the copyright holders and
    contributors as is and any express or implied warranties including but
    not limited to the implied warranties of merchantability and fitness
    for a particular purpose are disclaimed in no event shall the
    copyright owner or contributors be liable for any direct indirect
    incidental special exemplary or consequential damages (including but
    not limited to procurement of substitute goods or services loss of use
    data or profits or business interruption) however caused and on any
    theory of liability whether in contract strict liability or tort
    (including negligence or otherwise) arising in any way out of the use
    of this software even if advised of the possibility of such damage

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 include/linux/sunrpc/bc_xprt.h |   17 +----------------
 net/sunrpc/backchannel_rqst.c  |   16 +---------------
 net/sunrpc/sunrpc.h            |   16 +---------------
 3 files changed, 3 insertions(+), 46 deletions(-)

--- a/include/linux/sunrpc/bc_xprt.h
+++ b/include/linux/sunrpc/bc_xprt.h
@@ -1,22 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /******************************************************************************
 
 (c) 2008 NetApp.  All Rights Reserved.
 
-NetApp provides this source code under the GPL v2 License.
-The GPL v2 license is available at
-https://opensource.org/licenses/gpl-license.php.
-
-THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
-"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
-LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
-A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
-CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
-EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
-PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
-LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
-NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 
 ******************************************************************************/
 
@@ -83,4 +69,3 @@ static inline void xprt_free_bc_request(
 }
 #endif /* CONFIG_SUNRPC_BACKCHANNEL */
 #endif /* _LINUX_SUNRPC_BC_XPRT_H */
-
--- a/net/sunrpc/backchannel_rqst.c
+++ b/net/sunrpc/backchannel_rqst.c
@@ -1,23 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /******************************************************************************
 
 (c) 2007 Network Appliance, Inc.  All Rights Reserved.
 (c) 2009 NetApp.  All Rights Reserved.
 
-NetApp provides this source code under the GPL v2 License.
-The GPL v2 license is available at
-https://opensource.org/licenses/gpl-license.php.
-
-THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
-"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
-LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
-A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
-CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
-EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
-PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
-LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
-NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 
 ******************************************************************************/
 
--- a/net/sunrpc/sunrpc.h
+++ b/net/sunrpc/sunrpc.h
@@ -1,22 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /******************************************************************************
 
 (c) 2008 NetApp.  All Rights Reserved.
 
-NetApp provides this source code under the GPL v2 License.
-The GPL v2 license is available at
-https://opensource.org/licenses/gpl-license.php.
-
-THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
-"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
-LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
-A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
-CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
-EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
-PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
-LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
-NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 
 ******************************************************************************/
 

