Return-Path: <linux-spdx+bounces-29-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4001BA83195
	for <lists+linux-spdx@lfdr.de>; Wed,  9 Apr 2025 22:06:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7041189612A
	for <lists+linux-spdx@lfdr.de>; Wed,  9 Apr 2025 20:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4428BEA;
	Wed,  9 Apr 2025 20:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="d5t7ZIhw"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F313202C44
	for <linux-spdx@vger.kernel.org>; Wed,  9 Apr 2025 20:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744229066; cv=none; b=QhGRhVuS6SzkZVlBMDtDOG+0e+3RvoqoPiXZfvZ6gX8FbY4YLAWFg3ORvGKRWrXgFsmRV9OlhJDpnQe+VjO8FT9xY2cjCgmegkqaREttV91qJVbYEiIFuPR2tzv3E7HEFyAbKgTdFSGkzFQcdSYxyjJJ30BROTUsveRII5SqOJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744229066; c=relaxed/simple;
	bh=V6sRKuetJn5AbaXphKCel7x1TyDGI8JOUEdRcyW6CHE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=JwwhMabQC20WDTdwnDKKdQL/Lz/TFImQahoFnJVUNiDV6EbxO8q9BFhEdJzrkFcBUoMhp49kBZN58XF5Xj4Lntfor/i2TgBuZ4YN2Zox6jgZy+ozOFrppxnXaOugJ670DAFWbNNnYzljGH0gOa3JXRxHNEoykwEnnDpaJyZRk1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=d5t7ZIhw; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7c5a88b34a6so7515385a.3
        for <linux-spdx@vger.kernel.org>; Wed, 09 Apr 2025 13:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744229063; x=1744833863; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2zrkJPw55Y9UfxsEFvyWMHfC80VpPTQSx/31eYU2UIg=;
        b=d5t7ZIhwKFAl6dUNirf3cDay9D/vEH7MfERiyaoLL5v/wFRhH33u6TmTW1+F/ny3zV
         JzeRdK9k6HWm2nfFaOd8ezy+RohSsUN3ZZNULE7noMsuy36PU+HPCW0ZkRB5s6ntH6cP
         ODBpqUYtGQuWBkg62gY/Ir5SFVW1CYOG603iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744229063; x=1744833863;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2zrkJPw55Y9UfxsEFvyWMHfC80VpPTQSx/31eYU2UIg=;
        b=uIliLxabdVS7qMHk2PvQd34QIad0PA/b/ARlVeJgJu4u/gn1pyo/0Hd6X0tZbinfRv
         RN5sMaH3GrufAPDpupDrD64PNOby6lcHMWlj/7mOzZhiERwshAqnPySlCIQGe+ZQ7fBI
         rtceoR0KjSuxgu7FO5HyT0WXVERcg1TSOZEi4xlNHc8HAkbpN5wBfslgEtJLbL5NFfrF
         fN5dkPsm8jhgzj54Cv/avxrFDyoAw0cjz7JRHHP/OHm7hq/5l2aM69T5WrgT3cUpy7N/
         B/CFpXDLlg4t2VPAOuOBKVtbpwYHfXnTIpo+55YTSO3Kk1ucpE0sZyzjsVEkZff3TAFk
         1D7A==
X-Gm-Message-State: AOJu0YwOBecjDvhYF8Skdz/LK+4i9xTKtwL1L52RpeGT36u7/UShrFce
	WRitUUl9yQP9IYOE5v+QR09kPOHJpzNbkYW5NKW2qIUQtAK3dP2jBa1w+qyUYg==
X-Gm-Gg: ASbGncsl7GJGKaAuJKmKpu0f5wskyn8s4BN/4E57lzaUPpEHtIzKBw7uNikmCUWBoIT
	G7o99S9ZDxtaegbPm+zmziK1oY74pD9TFQlAPdg6N5KbIDNfsoScQDRRe9CaPE+ee613Rj+7zy0
	2zQSv+XEHJI2UOgQtmScUXPza8roQP+qNK9KY733dLEg8zbE7oOTQTmzJTHY4eDtSYOiccAIyAo
	qGro4Ls4GVg81L3FfajqJdUJDRQNRZZa1+575rGGGggbrrO4PSZoUJ4duLjjRzIvYxTJtBj3w9Y
	scuwDffsg/NtUlBPIb1bCtMx/jo34hpORSR0Tl8j9SLkCAB7w0QZdBafztWIx1IMjKw//90R6fP
	O4b5aXdZqm3otC+Narw==
X-Google-Smtp-Source: AGHT+IF/OgVz1Lw3IHaAPZg8e6Tzq6TMokI1iBKCA0SJBYl53v3u98C2/mmtHWybZPD+2AjUYirn8g==
X-Received: by 2002:a05:620a:24cb:b0:7c5:5a97:f770 with SMTP id af79cd13be357-7c7a76c3d8bmr13043785a.41.1744229063262;
        Wed, 09 Apr 2025 13:04:23 -0700 (PDT)
Received: from denia.c.googlers.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c7a10a4d66sm114608285a.6.2025.04.09.13.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:04:22 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Wed, 09 Apr 2025 20:04:19 +0000
Subject: [PATCH v2] scripts/spdxcheck: Limit the scope of git.Repo
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250409-spx-v2-1-168115798db2@chromium.org>
X-B4-Tracking: v=1; b=H4sIAMLS9mcC/1WMQQ6CMBBFr0JmbU2Z2oCuvIdhIWWgs4CSqTYY0
 rtb2bl8P/+9HSIJU4RbtYNQ4shhKYCnCpx/LhMpHgoDarQa0aq4bsq06EZ7MabRBOW5Co28HZV
 HV9hzfAX5HNFU/9Z/P9WqVnQ1tseG+lYPd+clzPyez0Em6HLOX8YktsKZAAAA
X-Change-ID: 20250225-spx-382cf543370e
To: Thomas Gleixner <tglx@linutronix.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Andreas Wendleder <gonsolo@gmail.com>, 
 Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

If the git.Repo object's scope extends to the Python interpreter's
shutdown phase, its destructor may fail due to the interpreter's state.

Exception ignored in: <function Git.AutoInterrupt.__del__ at 0x7f1941dd5620>
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/git/cmd.py", line 565, in __del__
  File "/usr/lib/python3/dist-packages/git/cmd.py", line 546, in _terminate
  File "/usr/lib/python3.13/subprocess.py", line 2227, in terminate
ImportError: sys.meta_path is None, Python is likely shutting down

Make repo a variable of the function read_spdxdata() and scan_git_tree()
to limit the scope of git.Repo and ensure proper resource management.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
Changes in v2:
- Make repo a local variable
- Link to v1: https://lore.kernel.org/r/20250225-spx-v1-1-e935b27eb80d@chromium.org
---
 scripts/spdxcheck.py | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
index 8d608f61bf371647e7ca0129f583e94e535b6193..d5c4c37f1b068486af28110261f74c67301618a9 100755
--- a/scripts/spdxcheck.py
+++ b/scripts/spdxcheck.py
@@ -45,7 +45,9 @@ class dirinfo(object):
                 self.files.append(fname)
 
 # Read the spdx data from the LICENSES directory
-def read_spdxdata(repo):
+def read_spdxdata():
+    repo = git.Repo(os.getcwd())
+    assert not repo.bare
 
     # The subdirectories of LICENSES in the kernel source
     # Note: exceptions needs to be parsed as last directory.
@@ -295,7 +297,15 @@ def exclude_file(fpath):
             return True
     return False
 
-def scan_git_tree(tree, basedir, dirdepth):
+def scan_git_tree(basedir, dirdepth):
+    repo = git.Repo(os.getcwd())
+    tree = repo.head.commit.tree
+
+    basedir = basedir.strip('/')
+    if basedir != '.':
+        for p in basedir.split('/'):
+            tree = tree[p]
+
     parser.set_dirinfo(basedir, dirdepth)
     for el in tree.traverse():
         if not os.path.isfile(el.path):
@@ -306,11 +316,6 @@ def scan_git_tree(tree, basedir, dirdepth):
         with open(el.path, 'rb') as fd:
             parser.parse_lines(fd, args.maxlines, el.path)
 
-def scan_git_subtree(tree, path, dirdepth):
-    for p in path.strip('/').split('/'):
-        tree = tree[p]
-    scan_git_tree(tree, path.strip('/'), dirdepth)
-
 def read_exclude_file(fname):
     rules = []
     if not fname:
@@ -348,12 +353,8 @@ if __name__ == '__main__':
         sys.exit(1)
 
     try:
-        # Use git to get the valid license expressions
-        repo = git.Repo(os.getcwd())
-        assert not repo.bare
-
         # Initialize SPDX data
-        spdx = read_spdxdata(repo)
+        spdx = read_spdxdata()
 
         # Initialize the parser
         parser = id_parser(spdx)
@@ -389,14 +390,13 @@ if __name__ == '__main__':
                     if os.path.isfile(p):
                         parser.parse_lines(open(p, 'rb'), args.maxlines, p)
                     elif os.path.isdir(p):
-                        scan_git_subtree(repo.head.reference.commit.tree, p,
-                                         args.depth)
+                        scan_git_tree(p, args.depth)
                     else:
                         sys.stderr.write('path %s does not exist\n' %p)
                         sys.exit(1)
             else:
                 # Full git tree scan
-                scan_git_tree(repo.head.commit.tree, '.', args.depth)
+                scan_git_tree('.', args.depth)
 
             ndirs = len(parser.spdx_dirs)
             dirsok = 0

---
base-commit: d082ecbc71e9e0bf49883ee4afd435a77a5101b6
change-id: 20250225-spx-382cf543370e

Best regards,
-- 
Ricardo Ribalda <ribalda@chromium.org>


