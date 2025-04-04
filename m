Return-Path: <linux-spdx+bounces-18-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 499FDA7B7C9
	for <lists+linux-spdx@lfdr.de>; Fri,  4 Apr 2025 08:29:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 322B93B610E
	for <lists+linux-spdx@lfdr.de>; Fri,  4 Apr 2025 06:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DED186E40;
	Fri,  4 Apr 2025 06:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AZox5IS2"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB05188580
	for <linux-spdx@vger.kernel.org>; Fri,  4 Apr 2025 06:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743748179; cv=none; b=bqOl91XWXlv7a2ZR4RUGfQO5mG9FCD33RyxEQb/VIrXKM6Y1ExzG+tXi8Y3DCIxPps9rOAa81vI3nzD31EIxjL0CVWj/wE9eiQoI3ybLMVYwOgf2Z92s43TTLqeQJo8YZ/9vBAATQRXoNL/UpwhRaMHepOFvqh3psWg3AOeRhbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743748179; c=relaxed/simple;
	bh=SirHiF0IzPjZrZLGCDlILOP2R6w38LMKKr5VoTsgbco=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E2Ebq5d0bO1OFhBmrP6uU/XTkkWILYmhStIfd7uv2+fY8G5OoaUU6o7AGq7Ji6Esuu2Mz7P69aEcyy9jMl4sN5OX7nQI5g90zlZMqojxH4rwDqJ6upMnBGEHewzeHNnKWiIkVGP83jd8gTopcp0UH3YwJgykby5+kdPWZoNPiAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AZox5IS2; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5499e3ec54dso2005673e87.0
        for <linux-spdx@vger.kernel.org>; Thu, 03 Apr 2025 23:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743748175; x=1744352975; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o1bUxbwUrscVvhWMbUtW0PCBTE67Kf9+FciR2yrY+9w=;
        b=AZox5IS2mbpyYdwhW1MwLCo+NqZsknf2opD5+8InmYUmRxQlVePgLLcKpsE9QJxfXq
         xgqNleGVOm6JOUPAOFwMgxEThRUgHJcuYgQ/TVo4Ic5TBwOJRaxF7jVq0L66WadYJkhP
         9WpYpottJw92PDT2Aa4FDaZuvDUmrTsclrPsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743748175; x=1744352975;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o1bUxbwUrscVvhWMbUtW0PCBTE67Kf9+FciR2yrY+9w=;
        b=injAn+NP0L903JCyamsK+xGRXuuZKfklJt8JUEHSZsAubWR/FP8vrzjsArI0IHfCfT
         kSNuaCcJuWYazPIREHXAyoePiMjPurDEvXfTlizHJJVEJIsIF15ILwpVewD+RhST2un4
         aWJbNQAsY/FoXGOjExjVvJjsEdHK80hecZV4MNEHDMs1Q275XR9604C8bkTaPRxYRyZY
         1NrRDwWFWFvz3IBUerZO0552oaAP384LJDKJVw4R/jOqYo4XjkSGVcVsOX0o1ihUIYi8
         MDJcVZs+aKnPJ3fANVEgn0rv2Due5EE4lKcchbNCIumCO3+3qVvUbiVVnX17T9fEKADl
         jjoA==
X-Forwarded-Encrypted: i=1; AJvYcCXET4noVXJW49W7M1t2ja7YeESNZpZ1vvBjUtRP44JUHmPZVkL+U6ww8rXxiU9lk1znkbZNhtpckjKl@vger.kernel.org
X-Gm-Message-State: AOJu0YxvtFtPDlF8SQG846Z9jMjZwkWzucWvnTrIDYyCQfwSVxSPomGh
	vS8k4huvVDnA1CcwqWG51eKQRZ9piFwwKFIJxe4G/xpucyfqv77xHEVAnta3vJaqht5tmM1O9uA
	=
X-Gm-Gg: ASbGncvyg1w0Clovfj9+4Yh5icG044A1EI6BVwG+QqT1zP8XsJEELXSMURe3rC16TWM
	1ackjj6cC0xjxliabHnM8XYeEvVgM4XxQeqwwONGi0jTXKKxu1JOePStx5T9wt9iBf3dGJL8X/8
	wWapMGy4JizOSdYivd81v+VfvxirGwwQJd0QjGbPHkGyqyQc/k28/t7jvDGOu+MBXCAcggvSumO
	37QKq7oqTMCMN1r11xj/0Mc7FNRPJf3760pT3QQbnMI8QbJPPteThn5djtEk842ARxMnqz3LLDY
	lxAtycrB6M6Tk8rHBE6kgoWwUaEZX/wjQUV1994VDXLRAn9V7+uO3HnGwwG5wd8hEb/4zoeUWtd
	83F1Z0QFMPJfFjQAWAA==
X-Google-Smtp-Source: AGHT+IEF1CFUQNqADHXOeT5R1psMQSE/S3hhWboKrCktlNMwd74srotRt1NH7Pow/A2CxS78nmHavA==
X-Received: by 2002:ac2:4e04:0:b0:545:a2f:22b4 with SMTP id 2adb3069b0e04-54c233746edmr318413e87.40.1743748175234;
        Thu, 03 Apr 2025 23:29:35 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e5c182dsm347647e87.65.2025.04.03.23.29.33
        for <linux-spdx@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 23:29:34 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5493b5bc6e8so2002993e87.2
        for <linux-spdx@vger.kernel.org>; Thu, 03 Apr 2025 23:29:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXjgKua0BFAkunIm/aYW2NGe+lNCuc4s6M8nqje6U3EyDG2xhsCfMo/lhPUrTtrHXqtocl5Gr93K+95@vger.kernel.org
X-Received: by 2002:a05:6512:2250:b0:54b:e9b:db23 with SMTP id
 2adb3069b0e04-54c233752e4mr316232e87.37.1743748173535; Thu, 03 Apr 2025
 23:29:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250225-spx-v1-1-e935b27eb80d@chromium.org> <CANiDSCtfcMBMj3=_gWrMd3P1Bt19uZaWs1TYQ+ZPHo5amPi+TA@mail.gmail.com>
 <2025040417-aspire-relenting-5462@gregkh>
In-Reply-To: <2025040417-aspire-relenting-5462@gregkh>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 4 Apr 2025 08:29:21 +0200
X-Gmail-Original-Message-ID: <CANiDSCvqhzBq73=A+MWLQoTfLEDL-T07srmnyZuSHYsnv06oRg@mail.gmail.com>
X-Gm-Features: AQ5f1JrTe1ukOWMwD9SqlEcIy1Hss_PGvTbCOL5bfkOCWHBOE1j_Vv8ZxNY2CHc
Message-ID: <CANiDSCvqhzBq73=A+MWLQoTfLEDL-T07srmnyZuSHYsnv06oRg@mail.gmail.com>
Subject: Re: [PATCH] scripts/spdxcheck: Limit the scope of git.Repo
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 4 Apr 2025 at 08:22, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Apr 03, 2025 at 11:34:14PM +0200, Ricardo Ribalda wrote:
> > Friendly ping
>
> Empty pings provide no context at all :(

Do you mean that I'd rather left the whole patch as context, or that I
should provide a reason for the ping?

Let me try again:

Is there any change needed for
https://lore.kernel.org/linux-spdx/2025040417-aspire-relenting-5462@gregkh/T/#t

that was sent for review over a month ago?

Regards!


-- 
Ricardo Ribalda

