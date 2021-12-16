Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 473C4477A2C
	for <lists+linux-spdx@lfdr.de>; Thu, 16 Dec 2021 18:14:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235600AbhLPROX (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 16 Dec 2021 12:14:23 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:42444 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235482AbhLPROX (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>);
        Thu, 16 Dec 2021 12:14:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1639674862;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=oQgAhoiOjcEvvq4zHc3KhGoH9+9ZU/GHjebXeJBKCA8=;
        b=U57Eq079r3DAtXddT3LENZtYvGr1bosHkPnF21U6w4mQUqFTlhE0SdlzpgCk1Z/ibt1hSm
        eg2XpqyMGRr5+bVcVk0wkbieVf6GCCbUEAq3TG49amG9ghUhInFUah1IuACizumrJXhT/D
        v1H2do4P8HEifp0rxtGsD4MwJt3qjtg=
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com
 [209.85.221.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-3WGetNslPyedVxoI5yHcHw-1; Thu, 16 Dec 2021 12:14:21 -0500
X-MC-Unique: 3WGetNslPyedVxoI5yHcHw-1
Received: by mail-vk1-f197.google.com with SMTP id t5-20020a1f9105000000b002f7fbb56d22so4023180vkd.17
        for <linux-spdx@vger.kernel.org>; Thu, 16 Dec 2021 09:14:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oQgAhoiOjcEvvq4zHc3KhGoH9+9ZU/GHjebXeJBKCA8=;
        b=P/I1seuGLKNBeUadgQ0mf4xJW3hHMhkkiZioQg934uF88ZmyHPGQlfHeXWzNZXwLgd
         XmTePbI8JdIbkGA+cmFdad4hugXTBEobZdU6xXYDQE0s75y4QzEsXkyV/PeQOVHqS+5X
         5EW+Y76wF5L0PTpRdxDHxZi3WSveYQjm8uGJW0djGb/x/zQP6HvJxGvFwnMKjj8KImr4
         3OxhJ+phSUFClq9FLq4gVbGaFXF+GqNQVjdZp0jSTqq3VJEYJQQTAx5dzn1/UgGpDu4Z
         gNweuLQhBhZ8Oxv6JhTKmO9SR0Guy+ku5atbL+Eu7fIcIvPI99h7nuMho//gXvdIWTHT
         Zclg==
X-Gm-Message-State: AOAM533IwPsmOszcK5kHcqrcRZkthU5AuOMkE94r4k950qbuubh6QB8+
        UFJfkizpnf+3sWT/IMj4CFSRJJ3fq15D6B/GhQhEdCjLKyCeUFsNwG1TUagU3MN3h/g49PyWid9
        CCejftrCp7SHAGgQjNYgF0m9ocajYHNbe6nkfLg==
X-Received: by 2002:a67:fc91:: with SMTP id x17mr5816408vsp.23.1639674860898;
        Thu, 16 Dec 2021 09:14:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxZeE766WsJKtZAbhMyLrZU8A8/n/meEH7AyiHVqY8cf022RAtLRCFB9/m7y0IvBS9qdJ8zxCDFkGaW5OvF0IU=
X-Received: by 2002:a67:fc91:: with SMTP id x17mr5816396vsp.23.1639674860652;
 Thu, 16 Dec 2021 09:14:20 -0800 (PST)
MIME-Version: 1.0
References: <20211216094503.10597-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20211216094503.10597-1-lukas.bulwahn@gmail.com>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Thu, 16 Dec 2021 12:14:09 -0500
Message-ID: <CAC1cPGyg_wNqusQX+OzPNtTc8GSpQKwxfFSKzLfENYoXihQYww@mail.gmail.com>
Subject: Re: [PATCH] drm/amdkfd: make SPDX License expression more sound
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc:     Felix Kuehling <Felix.Kuehling@amd.com>,
        Jonathan Kim <jonathan.kim@amd.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        amd-gfx@lists.freedesktop.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rfontana@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, Dec 16, 2021 at 4:45 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> Commit b5f57384805a ("drm/amdkfd: Add sysfs bitfields and enums to uAPI")
> adds include/uapi/linux/kfd_sysfs.h with the "GPL-2.0 OR MIT WITH
> Linux-syscall-note" SPDX-License expression.
>
> The command ./scripts/spdxcheck.py warns:
>
>   include/uapi/linux/kfd_sysfs.h: 1:48 Exception not valid for license MIT: Linux-syscall-note
>
> For a uapi header, the file under GPLv2 License must be combined with the
> Linux-syscall-note, but combining the MIT License with the
> Linux-syscall-note makes no sense, as the note provides an exception for
> GPL-licensed code, not for permissively licensed code.
>
> So, reorganize the SPDX expression to only combine the note with the GPL
> License condition. This makes spdxcheck happy again.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> I am not a lawyer and I do not intend to modify the actual licensing of
> this header file. So, I really would like to have an Ack from some AMD
> developer here.
>
> Maybe also a lawyer on the linux-spdx list can check my reasoning on the
> licensing with the exception note?

I believe "MIT WITH Linux-syscall-note" is a syntactically correct
SPDX expression but is otherwise sort of non-meaningful.
"(GPL-2.0 WITH Linux-syscall-note) OR MIT" is presumably what is
intended here. But yes would be good to get confirmation from someone
associated with AMD.

Richard

