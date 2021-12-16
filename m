Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81189477C60
	for <lists+linux-spdx@lfdr.de>; Thu, 16 Dec 2021 20:22:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240932AbhLPTWK (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 16 Dec 2021 14:22:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240930AbhLPTWK (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 16 Dec 2021 14:22:10 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6DA9C061574
        for <linux-spdx@vger.kernel.org>; Thu, 16 Dec 2021 11:22:09 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id b40so51583857lfv.10
        for <linux-spdx@vger.kernel.org>; Thu, 16 Dec 2021 11:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iJmd78S3YbBSlGQn83I0jq9ljqrL5KMi3cs+QYv4G5Q=;
        b=IMgJ0vGuO/mp788yQJshC9wZYW0T/EEGkCkJvNmjGYmgBuCAXQi9R2rtPnVUXGpiuW
         dATrFQX97/XiSGJEL5ODlEI125Pc8PGXuuEZFtY+4+LgL446FVYJYbytxskslz7R4my4
         6T+6uiuzXFLvbqemsAX65zgj5iPDLNM0Gr5O4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iJmd78S3YbBSlGQn83I0jq9ljqrL5KMi3cs+QYv4G5Q=;
        b=xiwUDTuXWWhh3PUfxJfstONnkxme44Nw5X2K6UlHamJ25Li0v5DT4nz4m/NNX7ke5m
         IgJYiNFpGwI4GcvRAp+3XU0oYX4mfxAYDb4E/UnK7dE+33HH8m9SvWjoDM8nnSfvUdii
         14TJjDU7/COrbPAdrj1LUx03ADiEgyciKcfznCpXzshv3ZIfeYE14LStAVbXIb4bC9lG
         9leRcMfKYxxu/n8g9kKOhr51TZIrw9wFk8OM/vx/+hA9jfULKjjXoEY2vDlWvpFLmHl1
         rdv4E+nI1MwF4kISfYNLzrNG8YIBxOZq/0eLlEAHj+Kat7D1GB0n5WTgWrAmGboTy3RQ
         1I+A==
X-Gm-Message-State: AOAM530m2xOYd9vUnwup2ln5yGqrEvyl8XckM1L9PFK14GlorBxE9ZAp
        EyRsd8FXGtP9Q0ujjGFHmrK7QpsB1BtK5dj8e2GhsA==
X-Google-Smtp-Source: ABdhPJyCyOzuaF/9HovqrvOyPV/d+bMWRgT/6AyULF6y3aDZ9NbPhU2nDhZoejovfVAoP9h+Uv3p9CWC1x60r/Mch2U=
X-Received: by 2002:a05:6512:23a7:: with SMTP id c39mr16423447lfv.655.1639682527942;
 Thu, 16 Dec 2021 11:22:07 -0800 (PST)
MIME-Version: 1.0
References: <20211216094503.10597-1-lukas.bulwahn@gmail.com> <CAC1cPGyg_wNqusQX+OzPNtTc8GSpQKwxfFSKzLfENYoXihQYww@mail.gmail.com>
In-Reply-To: <CAC1cPGyg_wNqusQX+OzPNtTc8GSpQKwxfFSKzLfENYoXihQYww@mail.gmail.com>
From:   Kate Stewart <kstewart@linuxfoundation.org>
Date:   Thu, 16 Dec 2021 13:21:56 -0600
Message-ID: <CAG_66ZSDtWOHEfjyHf9VvG2U9H3_O32mEo_0nmjDhqoxAaijPw@mail.gmail.com>
Subject: Re: [PATCH] drm/amdkfd: make SPDX License expression more sound
To:     Richard Fontana <rfontana@redhat.com>
Cc:     Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Felix Kuehling <Felix.Kuehling@amd.com>,
        Jonathan Kim <jonathan.kim@amd.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        amd-gfx@lists.freedesktop.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, Dec 16, 2021 at 11:14 AM Richard Fontana <rfontana@redhat.com> wrote:
>
> On Thu, Dec 16, 2021 at 4:45 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> >
> > Commit b5f57384805a ("drm/amdkfd: Add sysfs bitfields and enums to uAPI")
> > adds include/uapi/linux/kfd_sysfs.h with the "GPL-2.0 OR MIT WITH
> > Linux-syscall-note" SPDX-License expression.
> >
> > The command ./scripts/spdxcheck.py warns:
> >
> >   include/uapi/linux/kfd_sysfs.h: 1:48 Exception not valid for license MIT: Linux-syscall-note
> >
> > For a uapi header, the file under GPLv2 License must be combined with the
> > Linux-syscall-note, but combining the MIT License with the
> > Linux-syscall-note makes no sense, as the note provides an exception for
> > GPL-licensed code, not for permissively licensed code.
> >
> > So, reorganize the SPDX expression to only combine the note with the GPL
> > License condition. This makes spdxcheck happy again.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > I am not a lawyer and I do not intend to modify the actual licensing of
> > this header file. So, I really would like to have an Ack from some AMD
> > developer here.
> >
> > Maybe also a lawyer on the linux-spdx list can check my reasoning on the
> > licensing with the exception note?
>
> I believe "MIT WITH Linux-syscall-note" is a syntactically correct
> SPDX expression but is otherwise sort of non-meaningful.
> "(GPL-2.0 WITH Linux-syscall-note) OR MIT" is presumably what is
> intended here. But yes would be good to get confirmation from someone
> associated with AMD.

Thanks Lukas,  I agree that this is indeed clearer.
+1

Reviewed-by: kstewart@linuxfoundation.org
