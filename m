Return-Path: <linux-spdx+bounces-26-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A9CA817B6
	for <lists+linux-spdx@lfdr.de>; Tue,  8 Apr 2025 23:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22AD116E7B2
	for <lists+linux-spdx@lfdr.de>; Tue,  8 Apr 2025 21:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0FA2550D8;
	Tue,  8 Apr 2025 21:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="b/BUWUZc"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0FE254B09
	for <linux-spdx@vger.kernel.org>; Tue,  8 Apr 2025 21:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744148412; cv=none; b=TKqbvkBrnBQ0oaDN/O45YMZyCUsMbRVCj9P5SYK9Yg8MynOLe5ievGTzP9/FtXvnM4CecvPXbD6l9QPXSX+oGPuKMI4qt3P6sL31KXv/mfgVFUps4lW3vAcQLkGh1UGWwaYHNLBr5Jddv6T+hOAySO8KlUUzdYHdiwEqEyW7P7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744148412; c=relaxed/simple;
	bh=SktKjID9PX6Mi7F9PD1XLt4SH9Ai1yb/YoZf11MhWgw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XNXDPCDfxUjBXCj6iiHuSeLR2Hi+i5Is2jTaU+dHbvvnsBf4k7sqQ+nb6CsiF0n0JWhnpk0dctk2C+xB+ReSUg+zhCBG72f7DHiUlajdKNd37Y7QJP1qUPOAJFAdB1/IOURwhDmysXfdQwFlTecSpyiL1HQMiub0LGiL9+qkvSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=b/BUWUZc; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-549946c5346so7131173e87.2
        for <linux-spdx@vger.kernel.org>; Tue, 08 Apr 2025 14:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744148409; x=1744753209; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gGze2p6ov5nhKjVxLmH8WTXrOTuNddI/56IYEuj8SXE=;
        b=b/BUWUZc2sPwUnreLRK9zrfG1ALfMkV8y0lCWaB2L/nfmgrAtv7X4aFBzCG8XceSNx
         FKA1zWO3M/kUwhN5UTim9savhMR7WX5r2IWTNTskk2itjLubpNJT/AYUeS5pyzOfQNMz
         +7NU+ZB1OE/1blMvGUP0dVdvMuDkTCEBWoWLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744148409; x=1744753209;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGze2p6ov5nhKjVxLmH8WTXrOTuNddI/56IYEuj8SXE=;
        b=quM70pcNa2kev7hIz/kiwI5h9ECwyCj7Z9dZJpYo+fxaxHglxKF1LDHeEbr9kWBcy6
         H4QGneh1WYwzgNhY/oJkXRUvHFSz61OGbNBy6k1Ju1qjZSIl7G82sGeVeOsM4XUi8pJQ
         RCPvnAebgFVAMbJWsDOSWKNGFtx6LLKxD8H+hqNgsbWyHfuV0KgnvvBJ8bs1hIAhs0vx
         nsP9fRQwEs0myidX+eYzmvM3xjqWRIxPe2GXHRO1sdfi5YCQd6BV7SdGwgXRU2PDv5uo
         KSoJKmZsTKUVEjcYpuQ+b5vnWzrKHvy35Abtz80Y7w0SXcRHhaABkxS2jbVtYHZHxSnZ
         N+bg==
X-Forwarded-Encrypted: i=1; AJvYcCW0bbBZ5CliuK8lLSd/2YMj8Rf3KmiG2FZDc2ZsOyvm+UHfc/h9Bg1Gv9bQlSUNX/EpMmupUmjeRpL5@vger.kernel.org
X-Gm-Message-State: AOJu0YyEwZoRQnt/h5qH3eW4DuNzBFkQ9LvBhrZg2zELyNL3DWOVOIll
	3iK4Sj4nbuRW77X9dqmkUyQt2idpgnJIUZCa3Eu1a8BHe5RGZLBHm3AkcTEdbzIEMaJJmRQ/bXU
	=
X-Gm-Gg: ASbGncsUa05A40K2gt57jkiYj+Uu7VAu9nCKDxpUGmq1pAXvDB5GUgYJjGWYg3ji0R6
	wHfVm4+WjJ8+lgrJS9Fx47iH9vmCaP5tt79XUP4TNlmTTOKjexK4MxIYHP8P3NwVlcpwl95ET9C
	8QZeauns+FLz/3AA/DnbMh0ZOyglBdNKZN+y9jhea0QwcFfMe+VFJ5IRcWhBk19+4raeaaQvE44
	1LxKPecy3v2+AcOFixkXBdNwhA9915Nz1frHP5KxsRQGbgR67HhH4aqU83sL2bVxzRf7yMbCx8b
	yl9VmFgYj1f45dyIhkaRT3aG1KfcMw7pIGhzfC0vQ1MbbNtcSYjQR85s6R/h/Aj84AddUiNnHAV
	v8k9FpVo=
X-Google-Smtp-Source: AGHT+IFgTa+vqCmgTnS4VRgVwKtcCSjWdwv6j01bxkF6BOrfzH1pM207PTH1FYr8PpCs3kGeisrJBQ==
X-Received: by 2002:a05:6512:eaa:b0:544:11cf:10c1 with SMTP id 2adb3069b0e04-54c4450ded7mr51645e87.30.1744148408729;
        Tue, 08 Apr 2025 14:40:08 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e5c1ea1sm1663813e87.92.2025.04.08.14.40.07
        for <linux-spdx@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 14:40:08 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-549946c5346so7131130e87.2
        for <linux-spdx@vger.kernel.org>; Tue, 08 Apr 2025 14:40:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXBsKQtkCJBSg/w0t1UL80TbRYTcm3QE/Tm0QDFVsLbgM7s4TX+4xQRcAk33i75UFiISCewlve97knd@vger.kernel.org
X-Received: by 2002:a05:6512:ba5:b0:545:1db5:f224 with SMTP id
 2adb3069b0e04-54c444b6994mr53176e87.11.1744148406896; Tue, 08 Apr 2025
 14:40:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250225-spx-v1-1-e935b27eb80d@chromium.org> <12647854.O9o76ZdvQC@radijator>
 <Z_Tgp8L_8goc63K1@pampelmuse> <Z_TtXaRnaU1zXbXv@pampelmuse>
 <Z_T8OiLQzKDGhOJs@pampelmuse> <MW5PR13MB5632E13F8F5B0B2B6DE3D16CFDB52@MW5PR13MB5632.namprd13.prod.outlook.com>
 <2025040816-pork-lisp-7b66@gregkh>
In-Reply-To: <2025040816-pork-lisp-7b66@gregkh>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 8 Apr 2025 23:39:55 +0200
X-Gmail-Original-Message-ID: <CANiDSCs0timX+XN8xNsMKEXnaj58+FpfL791UyFo7djNOE6dLQ@mail.gmail.com>
X-Gm-Features: ATxdqUFKlgiTWgAKq3QwhMHai6z7obJaUq6teJeVC8rjjJ6u-OBXDk3g8rw1cDM
Message-ID: <CANiDSCs0timX+XN8xNsMKEXnaj58+FpfL791UyFo7djNOE6dLQ@mail.gmail.com>
Subject: Re: spdxcheck: python git module considered harmful (was RE: [PATCH]
 scripts/spdxcheck: Limit the scope of git.Repo)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Bird, Tim" <Tim.Bird@sony.com>, Gon Solo <gonsolo@gmail.com>, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	"linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Tim

On Tue, 8 Apr 2025 at 20:12, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:

> > Let me know if anyone objects to me working up a refactoring of spdxcheck.py
> > eliminating the use of the python 'git' module, and submitting it for review.
>
> No objection from me!

SGTM. Depending on how much time you need to implement it, we could
land something with `del` as Gon proposed. I can send a v2 if needed.

Let me know what you think



-- 
Ricardo Ribalda

