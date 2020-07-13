Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D4CF21D1F7
	for <lists+linux-spdx@lfdr.de>; Mon, 13 Jul 2020 10:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726360AbgGMImk (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 13 Jul 2020 04:42:40 -0400
Received: from smtp.al2klimov.de ([78.46.175.9]:37286 "EHLO smtp.al2klimov.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725830AbgGMImk (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Mon, 13 Jul 2020 04:42:40 -0400
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
        by smtp.al2klimov.de (Postfix) with ESMTPA id D4B06BC078;
        Mon, 13 Jul 2020 08:42:37 +0000 (UTC)
From:   "Alexander A. Klimov" <grandmaster@al2klimov.de>
To:     tglx@linutronix.de, gregkh@linuxfoundation.org,
        linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: [PATCH] LICENSES: Replace HTTP links with HTTPS ones
Date:   Mon, 13 Jul 2020 10:42:31 +0200
Message-Id: <20200713084231.32496-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: +++++
X-Spam-Level: *****
Authentication-Results: smtp.al2klimov.de;
        auth=pass smtp.auth=aklimov@al2klimov.de smtp.mailfrom=grandmaster@al2klimov.de
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely or at least not just HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.

 Sorry again to all maintainers who complained about subject lines.
 Now I realized that you want an actually perfect prefixes,
 not just subsystem ones.
 I tried my best...
 And yes, *I could* (at least half-)automate it.
 Impossible is nothing! :)


 LICENSES/dual/Apache-2.0 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/LICENSES/dual/Apache-2.0 b/LICENSES/dual/Apache-2.0
index 6e89ddeab187..fd71308fd2c3 100644
--- a/LICENSES/dual/Apache-2.0
+++ b/LICENSES/dual/Apache-2.0
@@ -15,7 +15,7 @@ Apache License
 
 Version 2.0, January 2004
 
-http://www.apache.org/licenses/
+https://www.apache.org/licenses/
 
 TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
 
-- 
2.27.0

