Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 914FF2581A9
	for <lists+linux-spdx@lfdr.de>; Mon, 31 Aug 2020 21:20:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728666AbgHaTUu (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 31 Aug 2020 15:20:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbgHaTUs (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 31 Aug 2020 15:20:48 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B075FC061573
        for <linux-spdx@vger.kernel.org>; Mon, 31 Aug 2020 12:20:48 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id q3so3583049pls.11
        for <linux-spdx@vger.kernel.org>; Mon, 31 Aug 2020 12:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=aa6aqn9122tGXBIpDI/AOlNftMS4Am5GJG39E8WwFfA=;
        b=oK07dzDKLtkSju8l9ALxgilzzB6XyF7O11Ve5INwmv9RKxq6X36t3jepvEa5q8CNqs
         TnmOG3KimNaMU/2QJZZ1ZseeeftJzZhBJRYVE+X+h8r2dD+PpN55WEfZtkgxQEzKKi2P
         GRBwmyN3gz8I1f9OM5aPxOXu8hnJ7LGKCdWDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aa6aqn9122tGXBIpDI/AOlNftMS4Am5GJG39E8WwFfA=;
        b=A24JTEbJkWSI+2dIu0q3DmsXfw5oVuk1YoxDr/+F/9nVnMF4Xz6awvk6MsS5Ht47Ym
         UAmEWiTLgzux5Zc/ENHtJvKPaJu75Zl20ScrGuC513dinwWa1BlT8dxuJoKuASVsHNsz
         k9RQfJwe1iwRLOOJq0t9CW+qDKligMqRgmTnOiwm5oGlb61FbcGvXfG9N3ZiKyd+K6Ur
         dhoPCs4QHTvQ12FbOGAsSuAkNtvvUCEyUz5Yw3KUaPq9G7cSJp2HMK1jUzPJgMn/BuEd
         BczMtBarDz/7jN6dTNSQJkPO/V29A2bjJLIj05wvqvr2OwXlOhXJwoKLK9jb4U5VSiW9
         iIsg==
X-Gm-Message-State: AOAM532zartVFSZ6l5OtfDMWQhUiSMKEGTGD8p0UiYNs/H8MFRurZaTz
        sgXK+O8XYcmbVULy/3bkKadE7w==
X-Google-Smtp-Source: ABdhPJznehFObRR7Lqvf/9fzo6cME8RmsOZeOGJe7GmzGTye7ow0uvkdJkEz07x9Bk2sjUXZ2j/2bg==
X-Received: by 2002:a17:90b:4a51:: with SMTP id lb17mr692847pjb.235.1598901648253;
        Mon, 31 Aug 2020 12:20:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v4sm338603pjh.38.2020.08.31.12.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 12:20:46 -0700 (PDT)
Date:   Mon, 31 Aug 2020 12:20:45 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Mrinal Pandey <mrinalmni@gmail.com>, skhan@linuxfoundation.org,
        Linux-kernel-mentees@lists.linuxfoundation.org, re.emese@gmail.com,
        maennich@google.com, tglx@linutronix.de,
        gregkh@linuxfoundation.org, kernel-hardening@lists.openwall.com,
        linux-kernel@vger.kernel.org, linux-spdx@vger.kernel.org
Subject: Re: [PATCH] scripts: Add intended executable mode and SPDX license
Message-ID: <202008311219.8ECE17B6B@keescook>
References: <20200827092405.b6hymjxufn2nvgml@mrinalpandey>
 <20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org>
 <alpine.DEB.2.21.2008310714560.8556@felia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2008310714560.8556@felia>
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Mon, Aug 31, 2020 at 07:45:25AM +0200, Lukas Bulwahn wrote:
> 
> 
> On Sun, 30 Aug 2020, Andrew Morton wrote:
> 
> > On Thu, 27 Aug 2020 14:54:05 +0530 Mrinal Pandey <mrinalmni@gmail.com> wrote:
> > 
> > > commit b72231eb7084 ("scripts: add spdxcheck.py self test") added the file
> > > spdxcheck-test.sh to the repository without the executable flag and license
> > > information.
> > 
> > The x bit shouldn't matter.
> > 
> > If someone downloads and applies patch-5.9.xz (which is a supported way
> > of obtaining a kernel) then patch(1) will erase the x bit anyway.
> >
> 
> Andrew, Kees,
> 
> thanks for the feedback.
> 
> As his mentor, I see two valuable tasks for Mrinal to work on:
> 
> 1. Document this knowledge how scripts should be called, not relying on 
> the executable bit, probably best somewhere here:
> ./Documentation/kbuild/makefiles.rst, a new section on using dedicated 
> scripts in chapter 3 ("The  kbuild files").
> 
> https://www.kernel.org/doc/html/latest/kbuild/makefiles.html#the-kbuild-files

Yes, that would be excellent.

> 2. Determine if there are places in the build Makefiles that do rely on 
> the executable bit and fix those script invocations. (Kees' idea of remove 
> all executable bits and see...)

I think this has value, yes. I don't think patches to remove the x bits
are needed, but any cases where they are depended on need to be fixed.

And I think "3" could be "wire up or remove spdx shell script"

-- 
Kees Cook
