Return-Path: <linux-spdx+bounces-5-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC539384D6
	for <lists+linux-spdx@lfdr.de>; Sun, 21 Jul 2024 15:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF91E1C20D9E
	for <lists+linux-spdx@lfdr.de>; Sun, 21 Jul 2024 13:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223F516630A;
	Sun, 21 Jul 2024 13:43:51 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from mailscanner05.zoner.fi (mailscanner05.zoner.fi [5.44.246.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434B98C0B;
	Sun, 21 Jul 2024 13:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.44.246.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721569431; cv=none; b=qxAiIuj1Ske0NxqOa1+bQzAs+CqISi5ApcqXSRCTYTV9e3UOKfea70LlsgSaZkmi0UVYI5hUUG299ZN1QRqgnV+hFpBEa4bIFu01j1rWy2aa9T4O+TXTlCQllOHkJbXGIYGVAnU+9TtkIdSAwxlXlXgWw5IICFlfdzARbeebR5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721569431; c=relaxed/simple;
	bh=s/MHY6Kop1Cj2m/yvxC+Wh8j07ZmF6uVYbG+JgcfUmg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f7F4BGVgKGHQjQ1NuKBtqv5vPkKA1K4COmMXUgU75cO4R/jbjd8p9nO5l5l/j7FB1BYvhGEy2HM60RZBG66SXxcQmy2Q7Pz8NycT1ePMqfS9rHJnHku7ifGP9fJE7y1F4y6bY6+e/Zedld8K3D9PyzUqD5PWAqZaHn+WgoMgZ6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tukaani.org; spf=pass smtp.mailfrom=tukaani.org; arc=none smtp.client-ip=5.44.246.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tukaani.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tukaani.org
Received: from www25.zoner.fi (www25.zoner.fi [84.34.147.45])
	by mailscanner05.zoner.fi (Postfix) with ESMTPS id 0559D211A4;
	Sun, 21 Jul 2024 16:37:04 +0300 (EEST)
Received: from mail.zoner.fi ([84.34.147.244])
	by www25.zoner.fi with esmtp (Exim 4.97.1)
	(envelope-from <lasse.collin@tukaani.org>)
	id 1sVWkG-00000001SjJ-2JVL;
	Sun, 21 Jul 2024 16:37:03 +0300
From: Lasse Collin <lasse.collin@tukaani.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Lasse Collin <lasse.collin@tukaani.org>,
	Sam James <sam@gentoo.org>,
	linux-kernel@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-spdx@vger.kernel.org
Subject: [PATCH v2 02/16] LICENSES: Add 0BSD license text
Date: Sun, 21 Jul 2024 16:36:17 +0300
Message-ID: <20240721133633.47721-3-lasse.collin@tukaani.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240721133633.47721-1-lasse.collin@tukaani.org>
References: <20240721133633.47721-1-lasse.collin@tukaani.org>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The license text was copied from:

    https://spdx.org/licenses/0BSD.html

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-spdx@vger.kernel.org
Reviewed-by: Sam James <sam@gentoo.org>
Signed-off-by: Lasse Collin <lasse.collin@tukaani.org>
---

Notes:
    0BSD is the ISC license without the requirements to preserve copyright
    and license notices.

 LICENSES/deprecated/0BSD | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 LICENSES/deprecated/0BSD

diff --git a/LICENSES/deprecated/0BSD b/LICENSES/deprecated/0BSD
new file mode 100644
index 000000000000..e4b95b749966
--- /dev/null
+++ b/LICENSES/deprecated/0BSD
@@ -0,0 +1,23 @@
+Valid-License-Identifier: 0BSD
+SPDX-URL: https://spdx.org/licenses/0BSD.html
+Usage-Guide:
+  To use the BSD Zero Clause License put the following SPDX tag/value
+  pair into a comment according to the placement guidelines in the
+  licensing rules documentation:
+    SPDX-License-Identifier: 0BSD
+License-Text:
+
+BSD Zero Clause License
+
+Copyright (c) <year> <copyright holders>
+
+Permission to use, copy, modify, and/or distribute this software for any
+purpose with or without fee is hereby granted.
+
+THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
+SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
+CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-- 
2.45.2


