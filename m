Return-Path: <linux-spdx+bounces-110-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 529EBD0F667
	for <lists+linux-spdx@lfdr.de>; Sun, 11 Jan 2026 17:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 819953040D0C
	for <lists+linux-spdx@lfdr.de>; Sun, 11 Jan 2026 16:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F1534B69B;
	Sun, 11 Jan 2026 16:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SZEh7Fna";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OVi0knrj"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9054834B433
	for <linux-spdx@vger.kernel.org>; Sun, 11 Jan 2026 16:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768147683; cv=none; b=k47yiffp0hCn15ihQs3njB4ulU6JFNtfzv+x9EPtLr2zSzb5nsp6MTA9Voe7/VfmfCO7zpifO2EcPT+b8A0mFVIqVz949Llg9PdBX1CayH4mkwvd9V8dyRV1/M2DoSkd4cg2ouMWjsVhjqP5EUs8uOdvHeHvRTiyczC2KU8MxGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768147683; c=relaxed/simple;
	bh=mrJ2r/higfpselGc6ELPbZ4mu5aGxqm5xTx8ZYso3Q8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ejDiLtVqnnn+whKiVRq5wjyOMpxvrCApItd28opZp+38vJR3wJ4j/xe+uZai0xuResgovYQK9FqdTmTVaFyKrUM94tu87S+ZlC2vHnfCTzR8x25OUjWJYdSTyDazfZLnFYQKksgp93pOs3M4FxWXFtOjLxNTg7PUD0AbYyAy+JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SZEh7Fna; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OVi0knrj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60B5jAfx1207738
	for <linux-spdx@vger.kernel.org>; Sun, 11 Jan 2026 16:07:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=UfXDHbQVS5pwkRsJmLRMNBG+krLGYWt0QDZ
	Ek+fS9RM=; b=SZEh7FnavRWYsAtKGkrVniuyYpnHDKWlXD8k9EFcuM3NvMZ0Lse
	9pMRLlLMPMNgI+A4+oQRBdBc095R8G7p2I7iAK4xvAlssdrhS52D1KWX4Cg8r/jl
	IKZEL5FHcspB5J/GmUE36I+uSu3MULYaXiG7+A2F59rptaxPVDv+aFZcmQJhOJnO
	Mm41ebNgLt8dGzTT5gquOTv2I6uC+/t82EQefZGYGfCl9mfAjliImMEYbELpLeN7
	YxMA4RcAQQgvqsmkqGJR2x1dGStQ1Uvx2r4olY9F7WRiMa92xsF8nQgKnsPqnbgt
	5qUmjB5cgkH2nsajRReMjZ1ANb+ZJUNgMPA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkntuhuvc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-spdx@vger.kernel.org>; Sun, 11 Jan 2026 16:07:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b1d8f56e24so1503029485a.2
        for <linux-spdx@vger.kernel.org>; Sun, 11 Jan 2026 08:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768147679; x=1768752479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UfXDHbQVS5pwkRsJmLRMNBG+krLGYWt0QDZEk+fS9RM=;
        b=OVi0knrjhTvug/OjX79DrMfVRb6dbHrjvHnFa1kXV/lZXV1B3IohD/Ci5NoFxr2yqW
         LQP/b6sYah6IoM40+laAsZGGKAeqGS7oWaRSa+hVxYQ6E36MZHfK2qLVdkV5VJ0K8NF2
         b9YI8Rxmhg9aeC0oN9zsV6MBXBHEFEvmhdgGrbcmWhYbfcVpxJiqVfxGYD6Dil719YOM
         1TYoKIf3nP3NoeFoCXYPHv4rCQkGu/7h+s3nyzkzpy0CZzSoTeqn1u/AZR2376jR+Jmr
         s0dkDBSFxy7YI2VRjphD6ZEHgz04MY0PdtviHfhllQFg428fuf+1DT8nM8nqlKpNpGfz
         ytug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768147679; x=1768752479;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UfXDHbQVS5pwkRsJmLRMNBG+krLGYWt0QDZEk+fS9RM=;
        b=VAgh/XPiGy7/eZOX1RIFSxfkhbpOKxa0AziqSBqq4iSbas8EfNQQvcHKc7iX/+kKdJ
         SeBT54a+f2v6j05fZMC7VzzAz4RHFERyKk/K4MABhp1lZajHWaM6AGxVJb2wsQGsN7bh
         LaTZMaxj1JFTpFoN9JnN7CIy3qWIlY+J8624RS+MJa535GYsuEGsfkO6jlF4BzEvtUGM
         CF1t/WbXpSj6Mj7CNem5Qp+gq3gliNgQI1Jdt1Cg/Sp90SjAm5VRJ0CHX045Ms6/uQY+
         avF6iBVxpdRC6RMErgVQ2BYhLm7TDR8wzZB8wvn5KsmP9ACtX8ehnfkyL4wgY/vJKyVu
         /PPQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2HNFKks6NX7N+hXxapYsrQs5U74hkhgG4mps1/d6xBvmIfhYEqsJAzXFVrKHS6mCn5b1KpQpaospz@vger.kernel.org
X-Gm-Message-State: AOJu0YxcNBo0qcowtl9JPa0z8WKskAdCMSib1OOvoVMDwp3hXAsgyKh7
	D31sUdffeKcO/TgOAO50sBBUiJLZ4XbddcDi9kylL46+nggPDlCcGzaO+I/RvL0n1B67ALPCze8
	xqgHIirDpIT4h364uA6jdQD+FeFuAjB//hlxL0usOyDe4wujxURBE+zUb/eOai+xu
X-Gm-Gg: AY/fxX6+5uwnRmu/Gh03koh+wnFiFe0n5gjQW6o7BN+EdUWVvchfNG4M60AxifdIYcz
	Rg6TvuJkp2JMgGsAHiYwncOAA458kvwOMzU3dxgDJ0z/yzp+ykfN+BKko/WKXzX7CrUAf61tqsg
	f94D+RvpvkPCFH0SuJ7BXQNbx43QXQReokJ1Nhti34ec3KK53UBueJsG0jFVdZtxt2WNxBODUVk
	FR6/KAIq3pWwvW1i1CYiVN31fCei8xInuj6TdO0olXitfLtXhmjIZjNhew0fTQ6cqxSy67sv1pq
	DEhfKIh/oK7i7XsJmiEOAIPv2s5mFLVyl9gR4o0VxlSTDkN31nki5rP5thCXxxxwLIwN9Kwrfqd
	Ct9+ZkWM3P9U2BOpyDIVmyIps7A==
X-Received: by 2002:a05:620a:2915:b0:8b2:dfb3:dc2a with SMTP id af79cd13be357-8c3894072a3mr2212355585a.75.1768147678706;
        Sun, 11 Jan 2026 08:07:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwCjCH6EdXW2J7irnqLz5o/yB3SzSXcXwviTX1wmXmPQwpzYcLaFaox6xfVLe5CbPSPXUU3Q==
X-Received: by 2002:a05:620a:2915:b0:8b2:dfb3:dc2a with SMTP id af79cd13be357-8c3894072a3mr2212351785a.75.1768147678294;
        Sun, 11 Jan 2026 08:07:58 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f6f0e15sm307246465e9.10.2026.01.11.08.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 08:07:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>, Andy Whitcroft <apw@canonical.com>,
        Joe Perches <joe@perches.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-spdx@vger.kernel.org,
        workflows@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2] LICENSES: Explicitly allow SPDX-FileCopyrightText
Date: Sun, 11 Jan 2026 17:07:51 +0100
Message-ID: <20260111160750.17569-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2749; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=mrJ2r/higfpselGc6ELPbZ4mu5aGxqm5xTx8ZYso3Q8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpY8rWn4lKtNED4bXwPlQGOV2waA/b7Ss9A0shQ
 JaUJWeko+WJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWPK1gAKCRDBN2bmhouD
 1xFWD/92jI3k/cDAvEeWpS0m/rW9JKqyC+dXTlXNEjYOdi9kh4F0TP1H5C75exA91rVOncDuBTi
 XsdsRmcYK1wNS3cPjmqsUEU/axosOqgvqLH8LZ/zZgkbTjDur5sF6YYKFfgJDy7zO+nYPRWPxTo
 M7TREvFci/b1Fdzk4p0qhXu8mIxofsTHqpA4mBM+l2qHoHhWKnuxC0XZE2sXw9FyfxRIL6E1BnB
 zDi9PER2GG5LNNbjPUhN2Tt6u16An+vqZx9By2ccLAxg5E7H3Y/19qrOXi5BirPQsdbkGh7uuMh
 xCbmfVyMWmRprbEjg2wFIJ0LWNz4MRdiD/1Zgv0Rxu2k5ZJONzG/EycoAZ9PseivLDBnJ03SVCz
 ylE2sI68mSbTnfzUqa1wbUaYQ9r6RnQHK+/CM/zwmt9bnLo4pxEMPvKBAx7gYvYkhRRDlRm2e3r
 D6ZnCeD30Q1npEpVCcuxsC3Lr+xdIKA/LoiUfxbJepaRbQh5Vg+N4JHYkcw3CW/77Xu3FKbE8xL
 ESnVAwUUBWhR7KS1+9P4zaY5GKSOPMxiDcacU/x0kXM4Ys3qivg3APpXCM+zDXXgcpRaGVq5s93
 llk5SBAyLcWZn9fbJIjaHL1nW6ztUPvKdnYy2HMbzKSb4L9yuCjYRWlpuNvzFRNsiyvHtYwwano 19EIqgGPxKabXxQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE0OSBTYWx0ZWRfXwbwtlpZpMNHT
 G/A01fKwalOXOn6nyle+si3wvAeULXII+Cp+6OjzKC81JG7Lg/wAPe/HjlkT6MbiMIEE+Em9Hrh
 dqdJriiMAXScRPU2YoESlI7k1tPKijlxX2oLq+MP86NmZxtjUFyDvlyHiYM6YKctr67zaG1mhHv
 FUyC1IaziB7JRgHRxyu9FMXfBXGcM6nXE0fYsNUrjfmCmtO3lqxFuPDsJNtNGZ8m72NGq0lEoBE
 1z0Vpw6lH3vTj9Kd3/nV4ZhDeDruKo6s8KMlgyPaMWOQcQzCPvO6WfJGJaX0kR43XsO9rODKiZY
 jG2tuI9W718D/Cs2MpTzkwH5tXEbAMGI8zHA3dKK2SrirorNI+eSiZ93bg4udR1R+V8mhk1dnKr
 8MKyYX4COWcx9XohnjyGeK6KHSOAdNyLwHjVTD4lGa3LubMQNIPkHmQSX+akErDQShcOXGU9wrI
 z8Hx9LQvtOozPINn8aQ==
X-Authority-Analysis: v=2.4 cv=R6AO2NRX c=1 sm=1 tr=0 ts=6963cadf cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=P1BnusSwAAAA:8 a=ag1SF4gXAAAA:8 a=IJv9LcIfAAAA:8 a=EUspDBNiAAAA:8
 a=_UQAGB7oVweOm72raGYA:9 a=bTQJ7kPSJx9SKPbeHEYW:22 a=D0XLA9XvdZm18NrgonBM:22
 a=Yupwre4RP9_Eg_Bd0iYG:22 a=cmr4hm9N53k6aw-X_--Q:22
X-Proofpoint-ORIG-GUID: 4tKkRpUpyVug3jsORE6mAmuQesI3Xav8
X-Proofpoint-GUID: 4tKkRpUpyVug3jsORE6mAmuQesI3Xav8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110149

Sources already have SPDX-FileCopyrightText (~40 instances) and more
appear on the mailing list, so document that it is allowed.  On the
other hand SPDX defines several other tags like SPDX-FileType, so add
checkpatch rule to narrow desired tags only to two of them - license and
copyright.  That way no new tags would sneak in to the kernel unnoticed.

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Joe Perches <joe@perches.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Other way would be to remove SPDX-FileCopyrightText from existing files
and disallow this, but one way or another we should be explicit about
it.  Otherwise people will be sending more of these and each maintainer
would need to make their own call.

Changes in v2:
1. Doc adjustments based on feedback from Greg and Laurent.
2. "unused" -> "unsupported"
3. Drop redundant blank line
---
 Documentation/process/license-rules.rst | 7 +++++--
 scripts/checkpatch.pl                   | 8 ++++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/process/license-rules.rst b/Documentation/process/license-rules.rst
index 59a7832df7d0..5cc58168e3d9 100644
--- a/Documentation/process/license-rules.rst
+++ b/Documentation/process/license-rules.rst
@@ -63,8 +63,11 @@ License identifier syntax
    The SPDX license identifier in kernel files shall be added at the first
    possible line in a file which can contain a comment.  For the majority
    of files this is the first line, except for scripts which require the
-   '#!PATH_TO_INTERPRETER' in the first line.  For those scripts the SPDX
-   identifier goes into the second line.
+   '#!PATH_TO_INTERPRETER' in the first line.  For those scripts, the SPDX
+   license identifier goes into the second line.
+
+   The license identifier line can then be followed by one of multiple
+   SPDX-FileCopyrightText lines if desired.
 
 |
 
diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 362a8d1cd327..cc2a5882fef8 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3844,6 +3844,14 @@ sub process {
 			     "Misplaced SPDX-License-Identifier tag - use line $checklicenseline instead\n" . $herecurr);
 		}
 
+# check for unsupported SPDX file tags
+		if ($rawline =~ /\bSPDX-.*:/ &&
+		    $rawline !~ /\bSPDX-License-Identifier:/ &&
+		    $rawline !~ /\bSPDX-FileCopyrightText:/) {
+			WARN("SPDX_LICENSE_TAG",
+			     "Unsupported SPDX tag\n" . $herecurr);
+		}
+
 # line length limit (with some exclusions)
 #
 # There are a few types of lines that may extend beyond $max_line_length:
-- 
2.51.0


