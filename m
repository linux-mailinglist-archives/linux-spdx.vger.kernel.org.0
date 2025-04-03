Return-Path: <linux-spdx+bounces-16-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6DEA7B18D
	for <lists+linux-spdx@lfdr.de>; Thu,  3 Apr 2025 23:42:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 695783A65D6
	for <lists+linux-spdx@lfdr.de>; Thu,  3 Apr 2025 21:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD3435949;
	Thu,  3 Apr 2025 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="amAPnIzq"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931BE74059
	for <linux-spdx@vger.kernel.org>; Thu,  3 Apr 2025 21:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743716073; cv=none; b=f6defCprSUrEBMVD2vto268gadPSJIw4Obg62K9xVfZMXDxdL5oJvZ+T+UX4il8Jf67ARjxy3rALmki7RQPa1otcu/EcPKD5gU01nxv4ciEAhfuSRIO9aueBfeRt5K1bJ1fqi3qW3Q+bhT0dnMVuJihxH9mEITLtsPGuWvPXULE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743716073; c=relaxed/simple;
	bh=S4xOHUvTrdN4UAFtU13IabwlJJ0FDWHbVE3UClOHRSA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oPQnAcJFfuZpjagpoiK9E0fL5+twVNQKTALPQRWIvHsrNF0+LdV5+alvgKgJ5/89ZJZBOze4RlE2tbm3FqPmvuMeTZVzahl1YoQQEQgK7YI7jWDzjgZazIieXar4LspfnGwFXcYqKJ3dOLIgDGRPe4C1RnL60twy7gwHg6ild9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=amAPnIzq; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54993c68ba0so1448468e87.2
        for <linux-spdx@vger.kernel.org>; Thu, 03 Apr 2025 14:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743716070; x=1744320870; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S4xOHUvTrdN4UAFtU13IabwlJJ0FDWHbVE3UClOHRSA=;
        b=amAPnIzq51LkNB/wv5lfcDQd2Zg3iqUAdrKnwh9Kq41gndNwLP5K76aXjrj7oPiz0e
         GY2nNTXQ7GhdGqTAt+WyiDWXSojG0w/L2KTh0AF/Vfmoteq4Dfe8ZVgYLjL9q/ue0ZIT
         EQ/TLsDCFYZc6JzrTrcDuOsdyVjbJ8Hj9WEsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743716070; x=1744320870;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S4xOHUvTrdN4UAFtU13IabwlJJ0FDWHbVE3UClOHRSA=;
        b=mk4d47DlkzDBh/yt2GISn5gRNFTrBTlr41qBGdkl+3yhxVrmXg1AN3DVRhRGmG2dlp
         Dh5cKh0LA8B1eos1UfA0Da196ZeyCq1Y6aq20TSP8RBKD/vdNEWahAo2v+30c4EZfVdX
         KBsXZ3RYjNyPUGCpIuV7Sd4tSe2OAGH6Y4G6PGNhD+LPZ/Maqyx90qDRKSGwW3TTpxFc
         81Z4Bdt7kCPLWQr/0Q2BvcxlnrWKqD88t40bpmGo+i4kjgUdCJRcYroLF3Pe1cEM2N/e
         rpE5Vm4cSpKqiRGzt42L6Yi9M7KRTlJNJip/SONEvxfDUbbNl/QRsWd5HHALYY4PHIlR
         /Rkg==
X-Gm-Message-State: AOJu0Yw5bwdpBJtrEIb6Ug8w54dS9TmFSKcvICFCdKm13jd9GxKE5yG0
	QRhamF+vcK44eQqVpoOkKwHEuGUTBlorub92TL+eM3TWykda5/tMcBCfb+QUQ3bbFvm/pB59a1w
	=
X-Gm-Gg: ASbGncsTOhgfxHf00XBw+w+1/2a5Y5bZFoac1TdnqNulp/wOeuv36CCsVOHzVrLJaGs
	XmJ7QnMY90D+lmRTis87yvZs1VfH4VNUGjkIPFwQ0vMMoxSU+QUtu7C8rrXOFm7HkHr3gPI53a9
	tg+QbMJCFT23mGGlAJuwAYz3yVlF1gheqEUZbSHedsie9OJQfIgOg2Jx9IIckTEskD3JKWZL3gF
	NhzJSJaUAZvnaOvCObPv6SN2LZLD+izWhvAH25UJ5+odYYw+36NK+2Nn32IqjO1zE9Y3nWgPmuE
	IC7qE1z+25xHZXIfVqlmg3FwUz8NmvXpjkIUtbHqAvNwmid4uVwshEAbScjhrtNy86vCDfIOqBW
	s8k5xXK7mHyjMfKk9nJIOrw==
X-Google-Smtp-Source: AGHT+IGegwkYIS6shISQ8sxFDLVSLUEF0ivJ88jefxJcE/ZD3r3eqhxll0kIwXx6baIVH0maFVyvVw==
X-Received: by 2002:a05:6512:a94:b0:54b:117b:b54d with SMTP id 2adb3069b0e04-54c2280ceffmr227763e87.56.1743716069659;
        Thu, 03 Apr 2025 14:34:29 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d61csm253829e87.178.2025.04.03.14.34.28
        for <linux-spdx@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 14:34:28 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30c0517142bso12235311fa.1
        for <linux-spdx@vger.kernel.org>; Thu, 03 Apr 2025 14:34:28 -0700 (PDT)
X-Received: by 2002:a05:651c:1462:b0:30b:ecfc:78bf with SMTP id
 38308e7fff4ca-30f0a0ee873mr3537031fa.5.1743716067767; Thu, 03 Apr 2025
 14:34:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250225-spx-v1-1-e935b27eb80d@chromium.org>
In-Reply-To: <20250225-spx-v1-1-e935b27eb80d@chromium.org>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 3 Apr 2025 23:34:14 +0200
X-Gmail-Original-Message-ID: <CANiDSCtfcMBMj3=_gWrMd3P1Bt19uZaWs1TYQ+ZPHo5amPi+TA@mail.gmail.com>
X-Gm-Features: AQ5f1Jp44cpho2HZoqYs98yU34zsj91j3YamQrEDzu0jI4mmrlYDU1XofOCGpq4
Message-ID: <CANiDSCtfcMBMj3=_gWrMd3P1Bt19uZaWs1TYQ+ZPHo5amPi+TA@mail.gmail.com>
Subject: Re: [PATCH] scripts/spdxcheck: Limit the scope of git.Repo
To: Thomas Gleixner <tglx@linutronix.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Friendly ping

