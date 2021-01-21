Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A23052FE648
	for <lists+linux-spdx@lfdr.de>; Thu, 21 Jan 2021 10:25:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727283AbhAUJXs (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 21 Jan 2021 04:23:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728662AbhAUJWD (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 21 Jan 2021 04:22:03 -0500
X-Greylist: delayed 1615 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 21 Jan 2021 01:21:23 PST
Received: from yawp.biot.com (yawp.biot.com [IPv6:2a01:4f8:10a:8e::fce2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 544ACC0613C1
        for <linux-spdx@vger.kernel.org>; Thu, 21 Jan 2021 01:21:23 -0800 (PST)
Received: from debian-spamd by yawp.biot.com with sa-checked (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1l2VjW-00EVGg-72
        for linux-spdx@vger.kernel.org; Thu, 21 Jan 2021 09:54:26 +0100
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on yawp
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.4
Received: from [2a02:578:460c:1:ae1f:6bff:fed1:9ca8] (helo=sumner.biot.com)
        by yawp.biot.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1l2VjT-00EVGK-A5; Thu, 21 Jan 2021 09:54:23 +0100
Received: from bert by sumner.biot.com with local (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1l2VjS-00173Q-FX; Thu, 21 Jan 2021 09:54:22 +0100
From:   Bert Vermeulen <bert@biot.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Bert Vermeulen <bert@biot.com>
Subject: [PATCH] spdxcheck.py: Use Python 3
Date:   Thu, 21 Jan 2021 09:54:12 +0100
Message-Id: <20210121085412.265400-1-bert@biot.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Python 2.x has been officially EOL'ed for some time, and in any case
the git module for it is hard to come by.

Signed-off-by: Bert Vermeulen <bert@biot.com>
---
 scripts/spdxcheck.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
index bc87200f9c7c..cbdb5c83c08f 100755
--- a/scripts/spdxcheck.py
+++ b/scripts/spdxcheck.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 # Copyright Thomas Gleixner <tglx@linutronix.de>
 
-- 
2.25.1

