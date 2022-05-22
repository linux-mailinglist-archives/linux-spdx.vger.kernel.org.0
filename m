Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1630530553
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 20:58:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232694AbiEVS6S (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 14:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiEVS6S (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 14:58:18 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2322E37A3E
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:58:17 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id q21so4419007ejm.1
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=colorfullife-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=bTTS+hKQWqUAxFfVpczzMPFBHq4ZeYcEKsi9E07eaLs=;
        b=uc8X6WyRbrukOXQq6ZOGzXeohCJkd0LZVkE6GiIVGI/hU8eOlH8NeRz98ULQQ4LBM2
         Ak6AvchefQ2OAA2B8VNyeaOGtDDxqVg1GG7Knp85lmPTjprVMUJgN9xRtAJJlxGr6nCk
         yraO4kCFFCl2bhI7gKY6HULLBHy1H25Y/HqsOPnwbrcOJu57p90SWv0hBxowJWOJY2sI
         cE5aYv0NQIAjLWPVYA06sSj0X0HYibyMlr+n+Nct9tyIcK5eJdWEor24inr+2hHgO6sy
         C2R74ckvGT7+GubYfBn8/y1RibsegH6uF26eIlOI8NqsxFSTmE26asD0JKnG+Bj1I+wP
         8YJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bTTS+hKQWqUAxFfVpczzMPFBHq4ZeYcEKsi9E07eaLs=;
        b=Brny4s6pgn9sKYRHr77MipRNtV/uJsXsraFVi6JVml9xT/xHi2nsYnUIwK7fUzDtXQ
         Nk/dWQsQlWXO/I8Vj9zlF+qyT7dYCVfNRRqINA5M/JlgDPcDAsRpcTznzo7K2qzLS7JW
         1LCbJ1Ie10OfqLVGlQs6N7XGUCmqSPNWBZ3tBspdaBU66zbmPiZv2imIy4MSwqTQqsMi
         CHek6+ihZ9V5+Fuavp+gRdQAqFNB09LhZJkhyPlyN86DZA86iHTyKzzG7hmno+UeSYU1
         soxEUEvGCcC1OG9YobTC0ANKsAYdOAoS5k4M460TBX+XwhgVYK/A/9OVjOkeSNLDde/V
         ni4A==
X-Gm-Message-State: AOAM531+0QIfoL3SOeL/JCs7E/wjD1avB5GCuvos6YFEHQEx9+KRAc7u
        ZIym/LxHCjqh8xelYSUNxWyifA==
X-Google-Smtp-Source: ABdhPJz/ayE5l7nzth6QgBjaGaOM26lCX7+v+oz7YOiGuatLlixTQqvMgS/k9iCnyQUTi5gzupAc2g==
X-Received: by 2002:a17:907:908b:b0:6fe:8c1f:3e47 with SMTP id ge11-20020a170907908b00b006fe8c1f3e47mr17145733ejb.594.1653245895687;
        Sun, 22 May 2022 11:58:15 -0700 (PDT)
Received: from ?IPV6:2003:d9:9728:900:2fcb:6514:bf3e:7d54? (p200300d9972809002fcb6514bf3e7d54.dip0.t-ipconnect.de. [2003:d9:9728:900:2fcb:6514:bf3e:7d54])
        by smtp.googlemail.com with ESMTPSA id mm24-20020a170906cc5800b006fe9ba21333sm3941231ejb.113.2022.05.22.11.58.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 11:58:15 -0700 (PDT)
Message-ID: <4129afa8-1c92-7a6e-e9d8-33712c21c649@colorfullife.com>
Date:   Sun, 22 May 2022 20:58:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: ipc: License cleanup
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>, golbi@mat.uni.torun.pl,
        michal.wronski@gmail.com
Cc:     linux-spdx@vger.kernel.org
References: <165322122199.3770149.6631395213068803310.tglx@xen13>
From:   Manfred Spraul <manfred@colorfullife.com>
In-Reply-To: <165322122199.3770149.6631395213068803310.tglx@xen13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Hello Thomas,

On 5/22/22 16:54, Thomas Gleixner wrote:
> Manfred!
>
> As you might know we are working on cleaning up the licensing mess in the
> kernel and convert it to SPDX license identifiers as the only source of
> license information.
>
> Archaeology found unspecific GPL license references, which have been
> authored by you.

Sorry, no, the initial authors of the file were:

  * Copyright (C) 2003,2004  Krzysztof Benedyczak (golbi@mat.uni.torun.pl)
  *                          Michal Wronski (michal.wronski@gmail.com)
  *


I did cleanup & merge support and probably many small changes.

But from what I remember, the majority of the code is from Krzysztof and 
Michal.


> 1) this file is released under the gpl
>
>       ipc/mqueue.c
>
>       https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=be94d44e818a5
>
> Can you please either send cleanup patches for the affected files or
> indicate which GPLv2 variant you had in mind and I run it through my
> cleanup machinery.

--

     Manfred

