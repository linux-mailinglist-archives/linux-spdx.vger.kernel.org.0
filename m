Return-Path: <linux-spdx+bounces-15-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B503A44060
	for <lists+linux-spdx@lfdr.de>; Tue, 25 Feb 2025 14:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBC1419E0341
	for <lists+linux-spdx@lfdr.de>; Tue, 25 Feb 2025 13:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310792690CB;
	Tue, 25 Feb 2025 13:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NBAza7K/"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830B8268685
	for <linux-spdx@vger.kernel.org>; Tue, 25 Feb 2025 13:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740489049; cv=none; b=K09CkQeTsBX9FUQaG8XkMcgDParXopDX8ltt/Jkrnls6g45zZe5jqIgKnKHg+G2Ufc4fzA1rsrK1aKRBMj1Ngi9srfnQDbUTcFT7BPb0RXf2tm0bEyYw5MUF2bAnwV9ZiGmFXiKQQf4QAXyxpuHngOwzfCDk3KMeoeNURxau3uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740489049; c=relaxed/simple;
	bh=5YEF+jstnWy7/0vubwbJg7dOnf1P4zQx345sO6nYAWw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=eQYSg9W06F/YTTtxZJydM/Uu/K+hb7oMhG2u1pp+KvpwpetulQg47QL+rHZpiCQwfeKFR4KeGd5e5OU+HRkbby4HZmE0GCYIRUL9A3oUhLradWJ2Yb12TEDbZf+/jtBdqUHZQB7a6iJrGP08VoU1GDJGPZ8ceK5uPJYhnfEcoN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NBAza7K/; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6e68943a295so48316406d6.0
        for <linux-spdx@vger.kernel.org>; Tue, 25 Feb 2025 05:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740489046; x=1741093846; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IkagoJjJX//F8ZAz8tjpxEvWJOpdWzJAPbQJpEIxATI=;
        b=NBAza7K/oTqn5OCcFwJ6CX3QoWa12k2ihcnTn6hAZEF4ErZIhPUIORvgwK6PgpT+Tk
         5Dz+ZXlnJMmxzghrffOacS3nXN9lUsZlKaDWjQChUzkul745kR/MOBomgh+Z+52+hcWv
         33ZOeZRX7VG38L5aaK26fBwVXi2FPrX3k+r8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740489046; x=1741093846;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IkagoJjJX//F8ZAz8tjpxEvWJOpdWzJAPbQJpEIxATI=;
        b=qkKYMNEmCzF9Q/KTr5VI/jqtlnN6CUYyCM4n75Rbp8g61Va7TgXfWz6bizCJk5ar/J
         OcfTnlewjr7fDcLP15nVwJamLEjhf2+ZBomRgS9DAaCAs2J/J3LbYZxwJENR5oTmmSiO
         +GNqAsStmpKFqddDmFvgJlvNKDenbP9kbfwytKjcqnWwARXCkM8s1lDVaZVOllNWoY3j
         r6JXrvKHR9D/FnMD490oPrqtWksz8BQpAR2tmgf9y1jq4hibd2LnoNIIBBAjELE02JEH
         OQMfs2xRjME/7d5uu2FdSxcknyz0FnT8672EMIdlw60KGYEQKj9I92geriEpWM6poJxW
         m6BA==
X-Gm-Message-State: AOJu0YyAlpth/GnImfrPMiFU7ue5wYYZ29RYzOxh2mMi/bEF/0VKKH6W
	cs/5NI4+N+vGG0KaCR7YvGqQo3oVZRpH8WLNlkyeBwCrC6E3Fe95f7E752thrQ==
X-Gm-Gg: ASbGnctkAW9As8K+oQ1B7kIc8Ysv2+wOM2G5qUZbhejJCNI8JqSS6nVCKd1UbIFtlIy
	3Xkb+sTWRzDtaaf9aPAwiSOsSQF2paQyaqc/EnISN/oBVKoL920fQlJad25dzbJFG7/CsQh02PO
	9mPfm3oBfqAY6I+KPAg6Tx31m69u+DzQd2FIJt4IfE9bUJ15MdhCgHZv829sbi/B2aHaxdE7XEs
	fViNP/AYM0dB3cBQp1MxAyzaCv6rH45DG8DvUXyE1bs62xtnSGuZ0conTKk2H8DhEd3ZC9B5tlD
	WtKBGxMSPcNiWG+/8hpjw/8dmFkmfBb8P1xXuzUMfDG/eUuvsDDKv6woK354EGE9HP3vD+aUjH+
	njb0=
X-Google-Smtp-Source: AGHT+IFStKQAwWRvJwouI6DTl4jomer8HvasLLUepvoeRNew+SRO7KoDYWAAQMXggyGTsUqWvxI86w==
X-Received: by 2002:a05:6214:c2e:b0:6e6:66a6:558b with SMTP id 6a1803df08f44-6e6b010ce3cmr238375676d6.22.1740489046280;
        Tue, 25 Feb 2025 05:10:46 -0800 (PST)
Received: from denia.c.googlers.com (15.237.245.35.bc.googleusercontent.com. [35.245.237.15])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e87b0871d7sm9263656d6.28.2025.02.25.05.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 05:10:45 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 25 Feb 2025 13:10:41 +0000
Subject: [PATCH] scripts/spdxcheck: Limit the scope of git.Repo
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-spx-v1-1-e935b27eb80d@chromium.org>
X-B4-Tracking: v=1; b=H4sIAFDBvWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIyNT3eKCCl1jC6PkNFMTY2Nzg1QloMqCotS0zAqwKdGxtbUAChz0rlU
 AAAA=
To: Thomas Gleixner <tglx@linutronix.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.1

If the git.Repo object's scope extends to the Python interpreter's
shutdown phase, its destructor may fail due to the interpreter's state.

Exception ignored in: <function Git.AutoInterrupt.__del__ at 0x7f1941dd5620>
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/git/cmd.py", line 565, in __del__
  File "/usr/lib/python3/dist-packages/git/cmd.py", line 546, in _terminate
  File "/usr/lib/python3.13/subprocess.py", line 2227, in terminate
ImportError: sys.meta_path is None, Python is likely shutting down

Use the `with` statement to limit the scope of git.Repo and ensure
proper resource management.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 scripts/spdxcheck.py | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
index 8d608f61bf37..eba808cbaeeb 100755
--- a/scripts/spdxcheck.py
+++ b/scripts/spdxcheck.py
@@ -349,11 +349,11 @@ if __name__ == '__main__':
 
     try:
         # Use git to get the valid license expressions
-        repo = git.Repo(os.getcwd())
-        assert not repo.bare
+        with git.Repo(os.getcwd()) as repo:
+            assert not repo.bare
 
-        # Initialize SPDX data
-        spdx = read_spdxdata(repo)
+            # Initialize SPDX data
+            spdx = read_spdxdata(repo)
 
         # Initialize the parser
         parser = id_parser(spdx)

---
base-commit: d082ecbc71e9e0bf49883ee4afd435a77a5101b6
change-id: 20250225-spx-382cf543370e

Best regards,
-- 
Ricardo Ribalda <ribalda@chromium.org>


