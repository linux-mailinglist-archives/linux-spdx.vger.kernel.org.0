Return-Path: <linux-spdx+bounces-37-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B387A88659
	for <lists+linux-spdx@lfdr.de>; Mon, 14 Apr 2025 17:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82C0C1907384
	for <lists+linux-spdx@lfdr.de>; Mon, 14 Apr 2025 14:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7EA274FC8;
	Mon, 14 Apr 2025 14:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="tT8B/kr7"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAFC274FD4
	for <linux-spdx@vger.kernel.org>; Mon, 14 Apr 2025 14:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744642095; cv=none; b=TURPuxaJcwfC3K8kvTdgzqVAzz7OIr/X5PCkSLDzzO8CxOg/04G56WdfgXwvKP3l9DwdqycDbemFOGIxwyfmS9MWQ3Nwg11qLAo/8Y2viF/nCcA3BNHCIq9+lcaKJlTtbQWF+ggTb7QXI0l93zW7BbkBEOSqdYi3wcurL0mMu0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744642095; c=relaxed/simple;
	bh=rhMCMHbUjfu25o78Qk0bXpRpxmEMmo84KsOZ4BfvPaU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Iqgj3ivK0O9qZClfmfg8l4lHdxmnIFhvHk/FjU4ttRgP1jyM4cqST5vsAnMDWoZm5pKM8ci2J/+a96SRl2WVUjNgcTkcgAJ5n4EbFiWxAUY8RJuRGTz/MCFjkXMQRLnVxJicus4TrUNVEK29PSKifTlKFgrLQZ4hFVRdjbGZ95w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=tT8B/kr7; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-86142446f3fso98729739f.2
        for <linux-spdx@vger.kernel.org>; Mon, 14 Apr 2025 07:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1744642091; x=1745246891; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n9NLOZp+0Nb53rh8qL2R0uTQQrVDxB/y4kuMaCTOR7c=;
        b=tT8B/kr7C9kGzYJyLkTdE8v0pbWdmoya/a1TKYm1+s5zhY5feNjUt3kBkNgJhmjL9Z
         M9KA/yhWP2Xaa8PopnQyrba3Z8aSsBu5iNZiIltwRBgJJ/KU3vPrylIWoJYj4GiMLLZC
         dBrdaX3iieG0fHsN/hf1GkA/oQgc/HHD1F6RvVTCbGQOCLfWhChLp75iZQ9UaT0mSCRg
         CkaBFp2CoxzffjcUg+rVzG+4/i8/3l2DiyxyVmzHCtmH4Z1/xBET3dmyOcJ7QvMxDTR/
         k0Hx92/F2d55YHzJGFZ4vnYyDSFQy3X/8OSgfBdeZoePx7ANie8VPjsER1APaYiSGfFn
         /Gvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744642091; x=1745246891;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n9NLOZp+0Nb53rh8qL2R0uTQQrVDxB/y4kuMaCTOR7c=;
        b=d0hjOp2vs6ivq6OnTsvhNjrPhkg82MaAnaza6IAeVQZTz5NA3gKCSYqNcyM2DDZ1Lh
         YgMFhBk6b41YHN5KP0E5xslwyjL4VNpf5cES6IUvY5F9YEqaEm/z/GggRlwusWpKXnUT
         O2KCo7jCx1W0oBNJ3jSzIW+lttzRltEePCmBmRxGXhF4e47o6xEXq/AewScMIKFHUGxT
         wy5UHp2992JbU0A61Wf5KY5/zftwZV98oaWCCSu0uyyN9tUIfQ9ej7ThXx3x0rj2A7C0
         36z1jDLpwmeTyLObgOUM9oUemxlJaTIYUKpJ5Smu4UO9Pl0coN8HbRq5YPoE650m0Ldp
         PMmw==
X-Forwarded-Encrypted: i=1; AJvYcCW2OdorM8Ask1WfCbW5e61yyp/cScRr4woYjkOIYEmTzvQ3HuxWDtNjchbexBI2VtS8trTioL0Dzh76@vger.kernel.org
X-Gm-Message-State: AOJu0YyuFghaQBPANvWHMRWaYK4AjR+88K5v1wQRy9aoQDsM06feGRkR
	GYc17y0v1zyfpYWh1TS7mcE0hFH6DAaiuyY4DukiL5Zc9Ga/9FD1dCCqP2Obp9S6uVWz1cjzur7
	B
X-Gm-Gg: ASbGncvNaMZXOfqSS5o9/vpjm9mZDnAU7OCx8fhMuAEfpFz50zyotuRBQpW8ubHeFwM
	b10CcjgLvlnFQ0tNk0zI5BeTOlybo6rLN/5pn6ZIP/32Lk1oz00SIzB59Gj/NCBtw6Wwkg/25I4
	Td5ljHDm4Wzo70dwEQ0HsSpyY7TkJr/kdcabD/m5PnmwKPtXALJ3gRz3nJg0ZBVFYCB56FfZ+mW
	gxattrLlXizdQI2UvXyzNLkjf9qE1xpAqT4yYlhBN0EsBDXOVD+imdassY4pwOgCh3s4byHZDL2
	W+hHF2Tb0P/QwgKXQTjDbaY77dbwQ8EQ
X-Google-Smtp-Source: AGHT+IGPfM+faRGObScSF9y3uJ9gSmNmLDppjIkdwVGlwIxx/VnPJwjYYyDuKqqfztkP+4WddDe9ag==
X-Received: by 2002:a05:6602:2b96:b0:861:7237:9021 with SMTP id ca18e2360f4ac-8617cb46848mr1354025639f.3.1744642091087;
        Mon, 14 Apr 2025 07:48:11 -0700 (PDT)
Received: from [127.0.0.1] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e6bd7bsm2569671173.141.2025.04.14.07.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 07:48:10 -0700 (PDT)
From: Jens Axboe <axboe@kernel.dk>
To: "Bird, Tim" <Tim.Bird@sony.com>
Cc: linux-block@vger.kernel.org, linux-spdx@vger.kernel.org, 
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <MW5PR13MB5632EE4645BCA24ED111EC0EFDB62@MW5PR13MB5632.namprd13.prod.outlook.com>
References: <MW5PR13MB5632EE4645BCA24ED111EC0EFDB62@MW5PR13MB5632.namprd13.prod.outlook.com>
Subject: Re: [PATCH] block: add SPDX header line to blk-throttle.h
Message-Id: <174464208984.57766.7624425408061189714.b4-ty@kernel.dk>
Date: Mon, 14 Apr 2025 08:48:09 -0600
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-7b9b9


On Fri, 11 Apr 2025 19:20:18 +0000, Bird, Tim wrote:
> Add an SPDX license identifier line to blk-throttle.h
> 
> Use 'GPL-2.0' as the identifier, since blk-throttle.c uses
> that, and blk.h (from which some material was copied when
> blk-throttle.h was created) also uses that identifier.
> 
> 
> [...]

Applied, thanks!

[1/1] block: add SPDX header line to blk-throttle.h
      commit: 1b4194053f6b30556272ff11750dd518e067ea49

Best regards,
-- 
Jens Axboe




