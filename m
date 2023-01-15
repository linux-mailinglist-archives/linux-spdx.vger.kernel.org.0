Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A97F66B09A
	for <lists+linux-spdx@lfdr.de>; Sun, 15 Jan 2023 12:26:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230215AbjAOL01 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 15 Jan 2023 06:26:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbjAOL0Z (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 15 Jan 2023 06:26:25 -0500
Received: from mail.nfschina.com (unknown [42.101.60.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 474634680
        for <linux-spdx@vger.kernel.org>; Sun, 15 Jan 2023 03:26:24 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
        by mail.nfschina.com (Postfix) with ESMTP id B4BBB1A00A17;
        Sun, 15 Jan 2023 19:26:40 +0800 (CST)
X-Virus-Scanned: amavisd-new at nfschina.com
Received: from mail.nfschina.com ([127.0.0.1])
        by localhost (localhost.localdomain [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 3dvMxLulFvzR; Sun, 15 Jan 2023 19:26:40 +0800 (CST)
Received: from localhost.localdomain (unknown [219.141.250.2])
        (Authenticated sender: junming@nfschina.com)
        by mail.nfschina.com (Postfix) with ESMTPA id ECEED1A0098D;
        Sun, 15 Jan 2023 19:26:39 +0800 (CST)
From:   shijm <junming@nfschina.com>
To:     tglx@linutronix.de, gregkh@linuxfoundation.org
Cc:     linux-spdx@vger.kernel.org, shijm <junming@nfschina.com>
Subject: [PATCH] scripts: modify output formatter
Date:   Sun, 15 Jan 2023 19:26:18 +0800
Message-Id: <20230115112618.11373-1-junming@nfschina.com>
X-Mailer: git-send-email 2.11.0
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,RCVD_IN_VALIDITY_RPBL,
        RDNS_NONE,SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

modify output formatter

Signed-off-by: shijm <junming@nfschina.com>
---
 scripts/spdxcheck.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
index 18cb9f5b3d3d..7bc13f3c5f7d 100755
--- a/scripts/spdxcheck.py
+++ b/scripts/spdxcheck.py
@@ -232,7 +232,7 @@ class id_parser(object):
                 tok = pe.tok.value
                 sys.stdout.write('%s: %d:%d %s: %s\n' %(fname, self.curline, col, pe.txt, tok))
             else:
-                sys.stdout.write('%s: %d:0 %s\n' %(fname, self.curline, pe.txt))
+                sys.stdout.write('%s: %d:%d %s\n' %(fname, self.curline, pe.txt))
             self.spdx_errors += 1
 
         if fname == '-':
-- 
2.18.2

