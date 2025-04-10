Return-Path: <linux-spdx+bounces-32-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F59A83877
	for <lists+linux-spdx@lfdr.de>; Thu, 10 Apr 2025 07:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 451138A2509
	for <lists+linux-spdx@lfdr.de>; Thu, 10 Apr 2025 05:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 797DC1FDE31;
	Thu, 10 Apr 2025 05:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jlyPPmoH"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A18541E25F2
	for <linux-spdx@vger.kernel.org>; Thu, 10 Apr 2025 05:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744263287; cv=none; b=sR1xaAzp/O/dgfF5NLUneehz/+G59bIAhaeJ06RXzMCbk+FSyqS17w5brTOYNqWroHrXfDYNeJNMgsik62n1c9pP/QrRo4omMp2AqZdHLxcCTaWMS2OrFslO+TgWjhcBacnY+IKvKeKZ9WNPNSnw9HnonTcztuxGddAQUjvdlos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744263287; c=relaxed/simple;
	bh=Afe3pDb5t0o4rs2tProRODrtznX9leQKO5Isy0DI6SQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TcoQI8ClYxuxnGJxfs68RvOC3poKCChDCGTKMqVicbbS4ksSr9d/WiAkz8/j7f/WNw12SZmh3wWR07wlHdd0COPqD2NLfHFpn8nTT9nPcy8Ch61vHu0OrBEPnxTBkLAYj0D7oZ5up9ewXLD9oJdQv+A+nFyEiVNkLYEa81RkgxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jlyPPmoH; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30bfca745c7so3645691fa.0
        for <linux-spdx@vger.kernel.org>; Wed, 09 Apr 2025 22:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744263283; x=1744868083; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LS9cXKaropXzeVH//TMB76La9FmI0OUrS3KtKoQRooI=;
        b=jlyPPmoHo1AYijRiBGrEHsaT4aPFtqmCvLVE6gS+bGX7iR84nlnsD9Xga/BNY+oVtJ
         6VJasXDYjyc0gFIhDL2GRsWtUZ1PKLk6EYNIoOpRPfo5jtgNKPqC8Zm8Zn3NnK+IEaU7
         UL6tZSogpsk+BMlRMmgXqF9g+zG23W0WF3vpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744263283; x=1744868083;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LS9cXKaropXzeVH//TMB76La9FmI0OUrS3KtKoQRooI=;
        b=doefjJ7NEJNpqevGX3kVK7zmlSRm7orE8VgRAUz7vxOZ31i5wxoKqfShQvAb029S67
         ug4JVsHYGW8GQHhe2KpDbw44oyxL3h00vESnEGWuVuRZ/U1MYhn+61zkXTIZypJXa4Q+
         creB7rTnVSDgSt8q/qnZD2TMMRNGbYPGAorQHnWi98zepbx7gCaJLf9gQ9kmXN4mY1MH
         9+/UJFEmCNGMaePKP+1boxmwLllz4HG0sXZERwhLHgX6qYtYu6uYu4WEP/OmDt0KCFTh
         uVi2JqeKn85HrARUzVKnvIpWjR2Fxhh+cUShGk//Co2JOteiGa1cFDXxwCXbZPUafpjM
         ChOw==
X-Forwarded-Encrypted: i=1; AJvYcCW/fF/xk2tb4y85a+HDqQKHndA7AkGm9jLBQ+rX+ohZGeWkMdSzW2In/uObMGgwymLm80icLAlsyEaL@vger.kernel.org
X-Gm-Message-State: AOJu0YzNaSOynTW3lhTizSXevG/nqVfLBCjIna6Gs8TVGNnoQL1KjDMT
	MBMAMPPGNUyebbJr7UznYwbzEYOmUB5CqJhCpOVn1W6ZhqzjYT/IabvYl1VsPCO37aukAHQvgMH
	heQ==
X-Gm-Gg: ASbGnctYU75O88EdiMUzg5oO7cdGdZC78nqIgHSk6ICDqtDTnUDv/CEWuKJJaZ2a3lV
	HSnffbdMuuURPecTUJAMIku3gVFmJuOvxV7vd60HAnmgXvRAUrwQxt6J9MAx2Vu8e5q052uMF32
	VDlkmbIOhrDR0T9Vmq0VGUjhj8izMOW/Uz+F/Z9krmqlQbvy2rNBMQOR91113s8eRe0KWbLELyN
	EzVq+YEuV2ALRCWQeYunyPouECDqeTvX0qkE09M33f4e6gPogY8czEHJyfqGJDAvPc7X3E4WZrk
	fWpNk4R1updA7B+0ryMNtpjGxh+d0vML1TUrqnV/jsbD1YVVOVpFfc0KpTFcjP+/3vluDwLRL6K
	a/PwJIlc=
X-Google-Smtp-Source: AGHT+IGlwJyGThHyWYRscGXPFdEJYQ5FeUzN7x46XZL3YhBFrGCedRVBOoUKCwuMgIu2Fm1V+P4Ftg==
X-Received: by 2002:a2e:b893:0:b0:308:ec50:e841 with SMTP id 38308e7fff4ca-30faccc0150mr5659461fa.25.1744263283481;
        Wed, 09 Apr 2025 22:34:43 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465d5e5dsm3557041fa.85.2025.04.09.22.34.42
        for <linux-spdx@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 22:34:42 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30de488cf81so4061111fa.1
        for <linux-spdx@vger.kernel.org>; Wed, 09 Apr 2025 22:34:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW1EyiFf6JXoWvSEnrdcI6YYZ+swQU3FFqUkgKh+ta+Ye5TPnTPs2w6JJwTF8PE6AQtj+Hiellul6/e@vger.kernel.org
X-Received: by 2002:a2e:ad92:0:b0:30b:b204:6b98 with SMTP id
 38308e7fff4ca-30facc05999mr4595191fa.12.1744263282519; Wed, 09 Apr 2025
 22:34:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250409-spx-v2-1-168115798db2@chromium.org> <Z_bbHP3JeRh2hLe2@pampelmuse>
In-Reply-To: <Z_bbHP3JeRh2hLe2@pampelmuse>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 10 Apr 2025 07:34:29 +0200
X-Gmail-Original-Message-ID: <CANiDSCvLartP0qB1WN0AaqJ3KP+aOhw0KcPGMK4oKx=QpjV-DA@mail.gmail.com>
X-Gm-Features: ATxdqUEcVfEw1mbLR_8L-wMlr9qoBejpAVty9izlFJ8_hg7ZVdQTWb1suwjnMNA
Message-ID: <CANiDSCvLartP0qB1WN0AaqJ3KP+aOhw0KcPGMK4oKx=QpjV-DA@mail.gmail.com>
Subject: Re: [PATCH v2] scripts/spdxcheck: Limit the scope of git.Repo
To: Gon Solo <gonsolo@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Content-Type: text/plain; charset="UTF-8"

On Wed, 9 Apr 2025 at 22:40, Gon Solo <gonsolo@gmail.com> wrote:
>
> Am Wed, Apr 09, 2025 at 08:04:19PM +0000 schrieb Ricardo Ribalda:
> > Changes in v2:
> > - Make repo a local variable
> > - Link to v1: https://lore.kernel.org/r/20250225-spx-v1-1-e935b27eb80d@chromium.org
>
> This is not necessary as it was Python's fault and is fixed by 3.13.3
> which came out yesterday. I just checked.

It will take some time before this reaches all distributions. This
patch is relatively simple.

I might be biased, but I think the benefits outweigh the cons.

>


-- 
Ricardo Ribalda

