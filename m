Return-Path: <linux-spdx+bounces-103-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF58CFF628
	for <lists+linux-spdx@lfdr.de>; Wed, 07 Jan 2026 19:19:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C73DD3536926
	for <lists+linux-spdx@lfdr.de>; Wed,  7 Jan 2026 17:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E197336D515;
	Wed,  7 Jan 2026 17:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N093k1cA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a8K1Euzb"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C6036CDF5
	for <linux-spdx@vger.kernel.org>; Wed,  7 Jan 2026 17:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767805976; cv=none; b=baz9OR//eFB6alns/GxaAioWrPENeJ/UQaaQoE49WLdiijdYYtWcRq+soEVi5z4cKgAdwgGI037chrwdba7mL9YsNR3jDiyn/vvgy51ZdbMzfD5yK41Jf2kJUURv+tzJOTV94+RIqsZLs4ImNE6wBRkFqbMXiy1rGSsE4czrjkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767805976; c=relaxed/simple;
	bh=N0G2ffuDBbq7gpywhPKYxodelqUo83XYdwlcWpXg4Hk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pqCw9DnO9+P1B79l4SYPvX3PFF3D3DLkLmjZz3CPK305/Q8CE/6HpXnTH+Bl6kXY+lt6UdT+rsEg5JeNKD3xNQ2+kQGlZFqVyvMyO9bilBnApjAi57yS9kN+n6nAQNqjnC04+Qlouz9tkoh5PUEob3IUo2GMihQgqSdGkXPurR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N093k1cA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a8K1Euzb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607H7f9p3673063
	for <linux-spdx@vger.kernel.org>; Wed, 7 Jan 2026 17:12:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=BhnC1bjxr1aLOi+Ek+VPvbB77/IQtQmkLcU
	O8GRpqt4=; b=N093k1cABGW2OOdeQRvGwlARqfhw4rQpyRh1/2yUxeFxcPGcj0j
	4iBJMWJZxZHV5GqApW/70CN2AP+O1DH7tNgxdlJ2k+KXRmaE88J2rJiXV2k6rVhc
	+YBZmDFkx1/zQdcDsX6rc6OXwvEUhozI+uhxHZXr4PIq/ZZCpxRF8W9d55/GSjw8
	Tbxa8fNZfiWq45QxEVpublEitrIEyO8PIYW7nWoG6iFOFVOBAWovz0tu68vedHy1
	0QFC+0ohks2uIN0Uvkx+KiCzuGCClMrAEozgADrR5OyMPYTZsw8n3nndeRfv0LR9
	eP1V1RYr03ZF6jDTh1gTz0L8Pkg+GKUgZow==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhum500qj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-spdx@vger.kernel.org>; Wed, 07 Jan 2026 17:12:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2ea3d12fcso554279485a.0
        for <linux-spdx@vger.kernel.org>; Wed, 07 Jan 2026 09:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767805973; x=1768410773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BhnC1bjxr1aLOi+Ek+VPvbB77/IQtQmkLcUO8GRpqt4=;
        b=a8K1Euzb6KNH+LgPPk9Y4CJiqsHMeNgDiUErYxZgHxxWmiiia3HFY05ODl19ZWDrkf
         1PGMDnWP+wFBsCxCGloLkaoI+ZOEoT7Y75b8oip5WqZgVxAYLzr14c30I23yPzGIhNcA
         4wUAHk0wNlmfLYJvvzqjNgQSzQP0H2SPGRaP2Z689JmchlhM5tAd9BzxLo157JuXlk3A
         uwG7zZq6lthf42bJAcBFO2IrpswmnU6pJ4rI3+N217mUwOEEO4y/pwB1e8m2okv+7Xty
         hAlpljnsguQdTa1y5P4PORoJdFm+1ZBr8MVs4QH8u+aEbuT/9itfxN+s5ZFe/MqYjHkz
         Vsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767805973; x=1768410773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BhnC1bjxr1aLOi+Ek+VPvbB77/IQtQmkLcUO8GRpqt4=;
        b=Ynynk+qY+Amzme23PppSQK4IOeMyKJcYruJC0DD7RA1QQxXGyPdXYVlmzt0wnqD7ov
         +Swu1cN2FHcq02b245snBB7Kpujac1KJk4njE2qU6SPoI0K8GKkMR78nUFqgT3sJSqLV
         vE5VsrVplXhyfwzxkRwdLYeE3fZwtGY4xGmy6Pdz2Fh+XBR8kJkWH8oj0DqNKP+Yybjo
         n+ofcKyJ0I2gG1zcvz6fIrJx8TTdUsPV9ThvmXPgvUN+SfrsXIR/sPMJw7brlX8G1I5A
         gHqn5Vmu+cTy0vKZqsxa7G3LbU/l7x5gQEnL3J0A7Hrsgh0d1LAiBmF+DrxHoShSe7qa
         G4MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcsF/5AwtV+C2sQ+9HvzjQnTjsarYJcOvr5Cz4GnU/fFvSj5oFvs+z0rfVSvijO9crKj11e7Edbl/N@vger.kernel.org
X-Gm-Message-State: AOJu0YxltqpfkujXmG8oJJjIdmvl6n0q42oEZ5gRTgnKvJAswSctPBA/
	39m53S+z5IJT2Wqq0U+Fc3U/rqvx8Q7hl7tr3kr2+m7JubxfCJ7LHSzTsVSZHZeS5RN6zEOOpsB
	0kA+GoSUfVDwZwmOPI9kzVf6R8LFYohoCWx2fn41xhU0C+dVIO4qggjBPL1rq+uNO
X-Gm-Gg: AY/fxX6CXVUlKGpXgca59uBIZdYkvqMy1oYziBPV7O9Xxgv1FrMcPKeNkN8VwGkCPHb
	9oifXzV2eIbLfM1RG97KfGdVkKzaRAMfC2spYvFd9oXHZkr2LFJBTKd9e5YgIgQIDFhNKHEK2KE
	bhxwDeKdRndYcC1gY/a3Bips4DLa9d59H8Xg4qz2bw23+HFUlnUfjeo81QIS9VEYk5x0sbXSZXr
	yWW1N7US+6lYhd8eevxm0YMHnbcZeTHoQeGGvx13SlTzurzEy9mATS+X62ISe9ooWluAUbJ8MKu
	iFIM8l4sppGoDZDiDIz198w/ted9JCmTAjTVUK676zar7sFdIztc2lALGmm8sXluierjiC4AfBe
	btiwZ/YXxd8Ax7Dcjws/ruTadhQ==
X-Received: by 2002:a05:620a:298c:b0:89f:764b:a4aa with SMTP id af79cd13be357-8c389368df1mr410775785a.18.1767805973280;
        Wed, 07 Jan 2026 09:12:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGLq08CZ8nR23ucExLb4CvsXiIo6kX5gKzzk5m3Bnc4mP9c5+jrDXuBenuswHmQfCHvBHgBhQ==
X-Received: by 2002:a05:620a:298c:b0:89f:764b:a4aa with SMTP id af79cd13be357-8c389368df1mr410770885a.18.1767805972725;
        Wed, 07 Jan 2026 09:12:52 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9d4c89sm5013433a12.10.2026.01.07.09.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 09:12:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>, Andy Whitcroft <apw@canonical.com>,
        Joe Perches <joe@perches.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-spdx@vger.kernel.org,
        workflows@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] LICENSES: Explicitly allow SPDX-FileCopyrightText
Date: Wed,  7 Jan 2026 18:12:47 +0100
Message-ID: <20260107171246.242973-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2059; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=N0G2ffuDBbq7gpywhPKYxodelqUo83XYdwlcWpXg4Hk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXpQONpIx8JizfVZLFVjxx6DLOMsYGW8KsBkpa
 qAMvsTQAxaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaV6UDgAKCRDBN2bmhouD
 1/LiD/92HMWwthUq97pAgrlmQK2KTUMQjI9xM8nj8LLUUNsUwbFN3r27YcK9rePVTFHJ/zN5sWB
 cly/tUfSL+BxCpmm6bAfN3UYQESDPPl9mXRI7CxoBVxLax0+pyEtUThr3efoWCFDNKfoCMCTOIZ
 M9Uk/bs2QH9zQEXqerzDItocxG3uQmWF97/NFmMWVf5ehWLVjsl7X9IuZ20QnW7gx5WdB7GPalN
 hFNsBnCJTvGXxVBL18k0oAFbBo5w0fTdTt/j+naBjpbv1NA5DrGpyPoe5xfs/wRZZusyX7uOLjU
 N8Q3ULMTn9zGOU3w2itOFTh5cXH1W/11epzr9pDrrF4tJ0TFC6uS+x6kMkClIdfS+ds5DhdPnG5
 J6BrnYHLXWq/Jx/uSVQm4kP68pKhUCevjA5wC+n1DpApFGpgR9J0351hgzmA2Bjqe04OL/P17BL
 bg7plkzZCQWcI07zR3d9Owmp8AGL7YJrE986nITr4A0ienJOxvodLSMQnVclW8UhtbiL4gcMrSx
 hVsDwlB81FUhIbmMqSQzNaaSEFvOZCGYkK/mBr2yI0XljFoZDl+8a9WouxnXzgVTi/214PHmoqF
 s7HzuOJ0C0BIdNlysX4O7GHLRO3oPXsHJt7uTTWgFbAIepIoyyDTuRKobcIHJCWpTHVcS0ROdb/ R4X+yxCv2lZz9Hw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: QPpl_6xVeRwNufyBVlKv4N7JpFvgsik5
X-Proofpoint-ORIG-GUID: QPpl_6xVeRwNufyBVlKv4N7JpFvgsik5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEzNSBTYWx0ZWRfX5Az/bZluwtie
 ZPhXJ29fbeBd3uXQ+5WBTfGTVRRYK48Z6aJEP9BtLzJb1+3KOGV3RndGwVclRGYcy5CqPslfWR5
 bfGIqMI4Jx3XxhqBlA23JiBzbrYJQPyvpdj+i41B8Pc5X3x0EdLNMpM8tzKvKaX3SDnQBbhVM+Z
 JvRWB2gYmDRduXX6BNhXpFzuyiTO11/t+liJK0H670QlCh7ECJ9aSvO6maIJ2oZpJkGwJsLBQex
 bhDNhc49ie8A85CHZ1qy63lvLK0Q1I/ior8cSTGSgkXVAYJeIDg5vduMl88rIIjcNLC8WHGEx8p
 MnyH3nEUMFOc+vfhAXxzszuWrCFnWCrbRHGTUNe4UTtk1DurrmDq/8l7ut7o5ESOPednF/vAh1z
 2g7iYXC2SNhgMbLZisXniUkbS1SbzWnE8B96p95yv5FlVMe2ONGtRYf3flK3k+u304+g1dF2Li1
 oigs3Z/nWFoqSv/Ec+A==
X-Authority-Analysis: v=2.4 cv=KNZXzVFo c=1 sm=1 tr=0 ts=695e9415 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dRIqDbwSeJKetXV8Y-0A:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 priorityscore=1501 clxscore=1011 impostorscore=0
 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070135

Sources already have SPDX-FileCopyrightText (~40 instances) and more
appear on the mailing list, so document that it is allowed.  On the
other hand SPDX defines several other tags like SPDX-FileType, so add
checkpatch rule to narrow desired tags only to two of them - license and
copyright.  That way no new tags would sneak in to the kernel unnoticed.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Other way would be to remove SPDX-FileCopyrightText from existing files
and disallow this, but one way or another we should be explicit about
it.  Otherwise people will be sending more of these and each maintainer
would need to make their own call.
---
 Documentation/process/license-rules.rst | 2 ++
 scripts/checkpatch.pl                   | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/Documentation/process/license-rules.rst b/Documentation/process/license-rules.rst
index 59a7832df7d0..8d7c0214f283 100644
--- a/Documentation/process/license-rules.rst
+++ b/Documentation/process/license-rules.rst
@@ -66,6 +66,8 @@ License identifier syntax
    '#!PATH_TO_INTERPRETER' in the first line.  For those scripts the SPDX
    identifier goes into the second line.
 
+   Identifier line can be followed by another one with SPDX-FileCopyrightText.
+
 |
 
 2. Style:
diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 362a8d1cd327..98261ee97e2b 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3844,6 +3844,15 @@ sub process {
 			     "Misplaced SPDX-License-Identifier tag - use line $checklicenseline instead\n" . $herecurr);
 		}
 
+# check for unused SPDX file tags
+		if ($rawline =~ /\bSPDX-.*:/ &&
+		    $rawline !~ /\bSPDX-License-Identifier:/ &&
+		    $rawline !~ /\bSPDX-FileCopyrightText:/) {
+			WARN("SPDX_LICENSE_TAG",
+			     "Unsupported SPDX tag\n" . $herecurr);
+		}
+
+
 # line length limit (with some exclusions)
 #
 # There are a few types of lines that may extend beyond $max_line_length:
-- 
2.51.0


