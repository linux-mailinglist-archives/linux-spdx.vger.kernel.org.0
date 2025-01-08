Return-Path: <linux-spdx+bounces-13-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67869A05C1A
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jan 2025 13:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84BC93A1F14
	for <lists+linux-spdx@lfdr.de>; Wed,  8 Jan 2025 12:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218121F9F4C;
	Wed,  8 Jan 2025 12:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cVuTWYjt"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23771946C7
	for <linux-spdx@vger.kernel.org>; Wed,  8 Jan 2025 12:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736340739; cv=none; b=aon0m3cyK83sNYgzh8D1ELNzwVnIH87Bl2wR/XnHhD8K5cEIMDRoLLe50Wdgw6zOjAO7p/9g16mC+s6wudCNjoOcZNUyU2Tg+RIYj984qZaKH7mbNrNvudbcBqp/+iQ60r70BaIusIZZ6RTJCZkYJ/wbMSU63m1vcHA7zElweKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736340739; c=relaxed/simple;
	bh=7/nUm1XmUYHu95tvN749XruBQ2pH6Ix1E5N7HxXiohI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:content-type; b=IXE3AMVgXnaMGMvAaP2Ml0GlYTEP2TM5ieqTy2qIAMpnugBLSy06QP/wFbgUF4xYDcM6Qtra2Ka5ZhLZZmjgjX49a7AeNHgAcV9sQA3kKesNmMzO5/yHBgU8ctrBT4HhxLoEBvUqrlQbHuuyDEw09iLsvWB1iRqS0pbsm9V1C0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cVuTWYjt; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1736340735;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uvfkjo/zZZsaBn97aqm4h+YhSCJm1XU141gYKpbaOx8=;
	b=cVuTWYjtH+Iiv/teIxP6wD9AqRz09/HBb5hkJ2lqFJDtxdd9DVMQ0lcvtqwbzpMzr8h6W5
	60NtwkTMIXvi64z8FCLjeavTnJQ+OGi1+U7MbsCgU85Me8hqjO9Hw/OkPBi/7niwJ51B8t
	YKd6mqhly5fnZCi4NCgYNmkR+YlgnPY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-433-O7oaedxcMTa_go6dddhx6Q-1; Wed, 08 Jan 2025 07:52:15 -0500
X-MC-Unique: O7oaedxcMTa_go6dddhx6Q-1
X-Mimecast-MFC-AGG-ID: O7oaedxcMTa_go6dddhx6Q
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4361efc9d1fso120958835e9.2
        for <linux-spdx@vger.kernel.org>; Wed, 08 Jan 2025 04:52:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736340733; x=1736945533;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvfkjo/zZZsaBn97aqm4h+YhSCJm1XU141gYKpbaOx8=;
        b=wlmdIzC+lsg8lL7aE7EqwWNrr9XjdjyjdNZpgY0weWBDYq7uOBK1FZ/8F7Nayt7E4j
         J8gaLDtfvZE3opitRcezEXW86UmlSr+lIokA3E994WwmTsJiLFeDGn7pnL14qa1jqimf
         4QmOJRt6SeVvYWHOpgH7jzkwVwaszBymTVY2mF8hngoTUSslLX5tulTwdS6vJI5aL5NE
         ftF4FDFa3qzBvPQfX1kEV9X/1p0z7hXjFSki031kDJwQZfXx5hd2NM/CYeChoo0xUWYf
         oT9/Qkjv1nY4i6SzGWJcWy1cQPtV22pSmWNuVctTAFLwSXsCBfDlRop99qvRXo0j/CsY
         qaBw==
X-Forwarded-Encrypted: i=1; AJvYcCWHlQU6UFG9sQJdRiQt1uaKEu/stzJo+KvCU4gCjnou8aTssw3yHn6/qMTWp1Z02g51FadZyXP3V4Ir@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc8NWtFs2qQcDy3PldINeQdUpg6OAsRYUdOISETXzed8AOnV6s
	7f2fiWMPp0rf7aktxqvFo6qOcVWab4cVa3TJ+n9k3rW4Y+cN/pVJ4JCyZtesWEVN6UVnuI7C5PB
	dnWVEWNjRlrkPxXQ/9dcX6x9GucQKc4u78EEizPYZAx27Iz6u4XMfEcrUgsrBHVSmKDs=
X-Gm-Gg: ASbGncsJawtBGa8P5AFQltgEl9AwwIxFHfKTJgeN3V0tvpNnmxV1kZNPlJLXrZYVc8f
	nlFIR9FvH0hs5N7JmBM0icoQo4kZBtih5JQoO3glxW4avh5kO5MB769Nn33RJJD0PB3V6BrlfIw
	qpWjKgwRPpivxWZSxLi6l+Zxv72MbWreYEbmj4dtBlQjwTYhgQczggjmBuhriVvrpKCIxS5hC3X
	TgHtfRj2MNh6w/ccp8enK0mHugiHXGWsYDEgp4l/HjcypZSGbSi99ZWofcTIkk/2ZKZALx4rVX9
	C9Odn6UG1tHM/kyxgL6QOgP4t+d+
X-Received: by 2002:a05:600c:470f:b0:434:a94f:f8a9 with SMTP id 5b1f17b1804b1-436e26f1305mr15924355e9.28.1736340733505;
        Wed, 08 Jan 2025 04:52:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDDeW0JKwRzZt9fC7mqQZVmaVNcOFtY2RPiMDGbGyW4SKUafgBQxP4P8DZOWozoi+G0380LQ==
X-Received: by 2002:a05:600c:470f:b0:434:a94f:f8a9 with SMTP id 5b1f17b1804b1-436e26f1305mr15924155e9.28.1736340733165;
        Wed, 08 Jan 2025 04:52:13 -0800 (PST)
Received: from lbulwahn-thinkpadx1carbongen9.rmtde.csb ([2a02:810d:7e40:14b0:4ce1:e394:7ac0:6905])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8475d9sm52660540f8f.56.2025.01.08.04.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 04:52:12 -0800 (PST)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-spdx@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] scripts/spdxcheck: Handle license identifiers in Jinja comments
Date: Wed,  8 Jan 2025 13:52:07 +0100
Message-ID: <20250108125207.57486-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wELmj-575HstgD6_V3QnNy7S-NJg50XX93HHKM3Q7K0_1736340734
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 4b132aacb076 ("tools: Add xdrgen") adds a tool, which uses Jinja
template files, i.e., files with the j2 file extension, for its lightweight
code generation.

These template files for this tool have proper headers with the SPDX
License information, which are included as Jinja comments by enclosing the
text with '{#' and '#}'. Sofar, the spdxcheck script does not support to
properly parse this license information in Jinja comments and it reports
back with 'Invalid token: #}'.

Parse Jinja comments properly by stripping the known Jinja comment suffix.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 scripts/spdxcheck.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
index 8b8fb115fc81..5c33681492dd 100755
--- a/scripts/spdxcheck.py
+++ b/scripts/spdxcheck.py
@@ -214,6 +214,9 @@ class id_parser(object):
                 # Remove trailing xml comment closure
                 if line.strip().endswith('-->'):
                     expr = expr.rstrip('-->').strip()
+                # Remove trailing Jinja2 comment closure
+                if line.strip().endswith('#}'):
+                    expr = expr.rstrip('#}').strip()
                 # Special case for SH magic boot code files
                 if line.startswith('LIST \"'):
                     expr = expr.rstrip('\"').strip()
-- 
2.47.1


