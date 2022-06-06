Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A7BA53EF32
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233137AbiFFUKr (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233290AbiFFUKd (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:33 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E25812FEF4
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:29 -0700 (PDT)
Message-ID: <20220606200810.472938095@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546227;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=t9izSC9BQ83e4HOXjOODCNLQulw9L2zPmsJrRM7Uu1c=;
        b=mvdYNwAfI5sB11w2NPI8CRcr4aAf7m5M0wW2CC46XNVZhkCQFt4FJP6UaDaavztYlrbvqM
        hNQYKtnRXHG/kenat00gLc/ovDjGS0VL8QmPe8zg1Unht+p5mWZI5PePBfhb4djfoJbu/i
        m/i3z0zwyyYGS1IuMzRHlStlknBXBKbesfa26IxcqRt7LbVhAf5bzyugjou/Di0TOhfQ2I
        ncsZfD3aTIqtSaTypO9DwoAhyvKZky/5t47yL/bVNyCJNa5uMPW63G4usJYckdtJr2gfUO
        Sxc9CU7hzOC4YfOmDYDec4//Jkr34q6MzZQq9pbpAJgaOP6NovQ2Fw87HQDuZg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546227;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=t9izSC9BQ83e4HOXjOODCNLQulw9L2zPmsJrRM7Uu1c=;
        b=OwZMp9JjNqWAxkT//qdI7TC2nUIwt20xBXVdndfzkVdmw5H3x13piJuhGoFNHH/Ga5VZxO
        BxRDWCf5o+tTwkBA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 07/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_149.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:27 +0200 (CEST)
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
 

