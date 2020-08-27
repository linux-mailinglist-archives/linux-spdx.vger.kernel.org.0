Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E97EE254CAE
	for <lists+linux-spdx@lfdr.de>; Thu, 27 Aug 2020 20:14:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727003AbgH0SOb (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 27 Aug 2020 14:14:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726243AbgH0SOb (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 27 Aug 2020 14:14:31 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 308C0C061264
        for <linux-spdx@vger.kernel.org>; Thu, 27 Aug 2020 11:14:31 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id t185so4118249pfd.13
        for <linux-spdx@vger.kernel.org>; Thu, 27 Aug 2020 11:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=egw9om8RsmaPZ5tPzAY0iuGJgt+M0MCv6BBpqYPOWiA=;
        b=WX1hyySDuKLYfX6LFE7cjlGRzvBh5H+D8/6DEOHbE489xogPA18r7xRo+mNtq95+SD
         jdo8ktSdqVe+C7IGoj4w2k3XgUmfq9gLxxXgdThL++o0uYN5Ktltt8w/cv0iv1I5CH++
         EHrnuIKZN5nGzyROQNpq2pVY+p/Eu/MlTpyiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=egw9om8RsmaPZ5tPzAY0iuGJgt+M0MCv6BBpqYPOWiA=;
        b=XIFY4Aailmu4y8ygvunUYpV9sDLHr4Dtmql0jRRhqHoUEV5S0GD7XOGiFCxddql3Fm
         LhBDmxVtgKtkeb4p1rOlSz8K2FDCEonqg82IpPzYcc4wMhIvsyL4Ylzc5pSV3Jhn3hXO
         c1jDGTw6wlAixHAwM+uVDO8a/kys6Qq45qdXwiHSbV3uMdKcSZNusVt6X1j5lX4de8c+
         dU1m25R8uqtKcq1PbsC+9yv2onJzpO0JbvsykpSy9kF6vPNl4iGjHAALG5A1doADHTl+
         2FXlJjMpVSYJEUsPEfVY1uMiLS0ZAFkw+xgTHA+iz/olBl8d7SWcLEFifFFp+Ra+N1Pq
         ToqQ==
X-Gm-Message-State: AOAM531xjojT+P3Frd0xISyUV2pAvisCLmegAoc0oLrjBaMsWewGAzoJ
        dyNM6p8PEXiHDVuVwhoCewMMxg==
X-Google-Smtp-Source: ABdhPJzGV2QPSzG3uVRG/o6Jhtf+oerJPcX2VXfJOagxOj7GobYJzv+lAXoO9dgsj/XS21gERtZ6ug==
X-Received: by 2002:aa7:9f5d:: with SMTP id h29mr2404455pfr.133.1598552070574;
        Thu, 27 Aug 2020 11:14:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u8sm3476103pfm.133.2020.08.27.11.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 11:14:29 -0700 (PDT)
Date:   Thu, 27 Aug 2020 11:14:28 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Mrinal Pandey <mrinalmni@gmail.com>
Cc:     skhan@linuxfoundation.org,
        Linux-kernel-mentees@lists.linuxfoundation.org,
        lukas.bulwahn@gmail.com, re.emese@gmail.com, maennich@google.com,
        tglx@linutronix.de, gregkh@linuxfoundation.org,
        akpm@linux-foundation.org, linux-kernel@vger.kernel.org,
        linux-spdx@vger.kernel.org, Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH] scripts: Add intended executable mode and SPDX license
Message-ID: <202008271102.FEB906C88@keescook>
References: <20200827092405.b6hymjxufn2nvgml@mrinalpandey>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200827092405.b6hymjxufn2nvgml@mrinalpandey>
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, Aug 27, 2020 at 02:54:05PM +0530, Mrinal Pandey wrote:
> commit eb8305aecb95 ("scripts: Coccinelle script for namespace
> dependencies.") added the file nsdeps, commit 313dd1b62921 ("gcc-plugins:
> Add the randstruct plugin") added the file gcc-plugins/gen-random-seed.sh
> and commit 9b4ade226f74 ("xen: build infrastructure for generating
> hypercall depending symbols") added the file xen-hypercalls.sh without the
> executable bit.
> [...]
>  scripts/gcc-plugins/gen-random-seed.sh | 0
>  scripts/nsdeps                         | 0
>  scripts/spdxcheck-test.sh              | 1 +
>  scripts/xen-hypercalls.sh              | 0
>  4 files changed, 1 insertion(+)
>  mode change 100644 => 100755 scripts/gcc-plugins/gen-random-seed.sh
>  mode change 100644 => 100755 scripts/nsdeps
>  mode change 100644 => 100755 scripts/spdxcheck-test.sh
>  mode change 100644 => 100755 scripts/xen-hypercalls.sh

I can't find "official" guidance on this right now, but I'm pretty sure
this (having execute bits set correctly) wasn't something we could depend
on (i.e. regular "diff" output doesn't support it (just git's diff),
and copies of the tree (or tarballs, etc) may have missed the bits). All
the portions of the kernel that uses these kinds of files explicitly
specify the interpreter (or universally set the execute bit)[1]. As such,
is this change useful?

It might be better to _remove_ execute bits to catch the places where
the build is accidentally depending on them. ;)

-Kees


[1] These all use CONFIG_SHELL:

scripts/gcc-plugins/Makefile:
  $(CONFIG_SHELL) $(srctree)/$(src)/gen-random-seed.sh $@ $(objtree)/include/generated/randomize_layout_hash.h

Makefile:
       $(Q)$(CONFIG_SHELL) $(srctree)/scripts/nsdeps

arch/x86/entry/syscalls/Makefile:
quiet_cmd_hypercalls = HYPERCALLS $@
      cmd_hypercalls = $(CONFIG_SHELL) '$<' $@ $(filter-out $<,$^)
...
$(out)/xen-hypercalls.h: $(srctree)/scripts/xen-hypercalls.sh
        $(call if_changed,hypercalls)

And I can't even find anything in the kernel that calls
scripts/spdxcheck-test.sh :) I think that should likely be moved into
the selftests directory and wired up.


-- 
Kees Cook
