Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D77DB423130
	for <lists+linux-spdx@lfdr.de>; Tue,  5 Oct 2021 21:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235960AbhJEUBV (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 5 Oct 2021 16:01:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235946AbhJEUBU (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 5 Oct 2021 16:01:20 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47E87C061762
        for <linux-spdx@vger.kernel.org>; Tue,  5 Oct 2021 12:59:29 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id q201so332006pgq.12
        for <linux-spdx@vger.kernel.org>; Tue, 05 Oct 2021 12:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BLskmJGo49ZaTs/IEwf4eelOY6LUBobTHpbH6xAX+XU=;
        b=C4oz6O22VwbnCqeRwIEzTyWG4IJlAggJctWXP59hSluxvHEkhwFYAAPxg1l2UNqpxF
         38kkSkTr5PDSeErTWpzs5MbF9PswqncYXBaid/dxnMcz+kzIN6EBQlKGfI2DlXNk1tMe
         Cb6VqRU8XlsDiW2tphrLc4oKWMb2XjuQRjPdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BLskmJGo49ZaTs/IEwf4eelOY6LUBobTHpbH6xAX+XU=;
        b=LERm20X15degl5PvJM0wcCKDE9+pRZXs09ChuqHYhZ2lrBjML6k3T6NwDvvhGjaM+0
         4cumX4C7IJK6YQeqB55UGiyVeHkzkXfQzxJaVGSV4Kxty/KzdGfb2pYontHP2docKbuy
         DFfu9IxjgV+ZzqNPY3DURtesIZHKGfXuwfEjvvoOdwyXP2UF3W0/5S1NQtqp2GqFI9xD
         ILc/65ZlENyiAu1+gizj73fyuXb3dQmmgxYwJqU0uUmaxAa28UnMz14DMrsKrD8JOlPH
         mWAVoWM9P5dH03w83u/MM9a4Pm2AN9rFTUll4yY9+OMZBJlJ+ZK2hE7PZb9fFwhASQRl
         9Hqw==
X-Gm-Message-State: AOAM530tnIndt57LS1AAZ3Cwj8vd9Bg9B3g4HccMiXGoBsZAYMYJhcSg
        PIG6Fzvs3nPYGYGil3VsmH//Vg==
X-Google-Smtp-Source: ABdhPJwdgsDyx3NnPDfhmE8VO584mG7R66yp0PUsB2CyUiSP+UhWnJZHpKQTQjAnxYVzb5C9o3n37w==
X-Received: by 2002:a62:5297:0:b0:3f4:263a:b078 with SMTP id g145-20020a625297000000b003f4263ab078mr32448286pfb.20.1633463968778;
        Tue, 05 Oct 2021 12:59:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k13sm8757894pfc.197.2021.10.05.12.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 12:59:28 -0700 (PDT)
Date:   Tue, 5 Oct 2021 12:59:27 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Luis Chamberlain <mcgrof@kernel.org>
Cc:     tj@kernel.org, gregkh@linuxfoundation.org,
        akpm@linux-foundation.org, minchan@kernel.org, jeyu@kernel.org,
        shuah@kernel.org, bvanassche@acm.org, dan.j.williams@intel.com,
        joe@perches.com, tglx@linutronix.de, rostedt@goodmis.org,
        linux-spdx@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
        linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 07/12] fs/kernfs/symlink.c: replace S_IRWXUGO with
 0777 on kernfs_create_link()
Message-ID: <202110051259.8DE82F3@keescook>
References: <20210927163805.808907-1-mcgrof@kernel.org>
 <20210927163805.808907-8-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210927163805.808907-8-mcgrof@kernel.org>
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Mon, Sep 27, 2021 at 09:38:00AM -0700, Luis Chamberlain wrote:
> If one ends up extending this line checkpatch will complain about the
> use of S_IRWXUGO suggesting it is not preferred and that 0777
> should be used instead. Take the tip from checkpatch and do that
> change before we do our subsequent changes.
> 
> This makes no functional changes.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

> ---
>  fs/kernfs/symlink.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/fs/kernfs/symlink.c b/fs/kernfs/symlink.c
> index c8f8e41b8411..19a6c71c6ff5 100644
> --- a/fs/kernfs/symlink.c
> +++ b/fs/kernfs/symlink.c
> @@ -36,8 +36,7 @@ struct kernfs_node *kernfs_create_link(struct kernfs_node *parent,
>  		gid = target->iattr->ia_gid;
>  	}
>  
> -	kn = kernfs_new_node(parent, name, S_IFLNK|S_IRWXUGO, uid, gid,
> -			     KERNFS_LINK);
> +	kn = kernfs_new_node(parent, name, S_IFLNK|0777, uid, gid, KERNFS_LINK);
>  	if (!kn)
>  		return ERR_PTR(-ENOMEM);
>  
> -- 
> 2.30.2
> 

-- 
Kees Cook
