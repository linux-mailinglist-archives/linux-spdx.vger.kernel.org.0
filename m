Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADBDD5280E0
	for <lists+linux-spdx@lfdr.de>; Mon, 16 May 2022 11:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233271AbiEPJa5 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 16 May 2022 05:30:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbiEPJa4 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 16 May 2022 05:30:56 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C74562C111
        for <linux-spdx@vger.kernel.org>; Mon, 16 May 2022 02:30:54 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id r30so1942935wra.13
        for <linux-spdx@vger.kernel.org>; Mon, 16 May 2022 02:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=m80xm9L1jWw9gBW5hTqwGkkrRChSL+0rpcHS4Epvok0=;
        b=cjcvMQzYWpomBRRAqHsEDTNYnZvHwzjPXdIfjBIF1AwTRlM5OjR/Sf9VT4Ys32MAoq
         cGdcCS+6TwnXcixYMvCmffIiZlM1g9FnAZdYhP5BdtLeSliQvF9m4JI0nwe4LuqTaS+Y
         N5mHA7QMREkQwUYbyv2OqwWMvHjXLiOEofW9iXVpkhmuR6Ex80VgF13+oyPYXaeSMsCn
         g/Q/8m3+0FrHB3VHUEGQTq831B6QYPPY1a2L2BnMNcXbnyCLWZZ4aD+eXMNje3K4C4+d
         u3Wt3QKNAUtN8Qii3AvFGwYq82y7qqr9HKQmFVzKjg57UIZAB3FXwTGlIEqipKhHVVDl
         gohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=m80xm9L1jWw9gBW5hTqwGkkrRChSL+0rpcHS4Epvok0=;
        b=50CEA/PLCqMaBLG+kMKD7rM3z6J3Uy8OdSLJq5KWWJcM57sb0jS5SfJCCg8Zt5fN2Z
         4pvB52BZ8S7lXTwdYLyDFHCvz/fEQNGQyBgQXd1WcgWdZ+zvxeZdpElQZXnkkKzNsiXs
         8son1k8pmlL4o2B3GLk+s8c3eIuxoGMixiVrJTXBYeHWp/KK1xQ7Eqa3b8FevFd5d3zB
         GfEFyqJtov1+diajHFm3IsGR5zDUEx/0GMWoByVKt3tpZrBJxlY5sHcnNp9QRJmM+2rn
         vxOHkEXLzV68qvkGHcrV0p9kVs9vbpfiOOzlvgt5dYjGqKy/I2hyQAfbRC852B4m+UhH
         QTGw==
X-Gm-Message-State: AOAM531lUUHv2/I9KOjajdRpUNRCmAEVcwhes6IMs8t32hsj2/NnmPDx
        +9NU85jVnFAydlhwgKiXBVADuA==
X-Google-Smtp-Source: ABdhPJypVpWTiAtN20AxbhPHVAYRV/UWCOoIOE/TTFwOe0eZ73tiK4k7kXjmx+tId+pgovCQL42ikw==
X-Received: by 2002:a5d:58d0:0:b0:20d:1176:bf1a with SMTP id o16-20020a5d58d0000000b0020d1176bf1amr322823wrf.167.1652693453303;
        Mon, 16 May 2022 02:30:53 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ed2f:f020:b464:e524:6a1d:33d0? ([2a01:e34:ed2f:f020:b464:e524:6a1d:33d0])
        by smtp.googlemail.com with ESMTPSA id s10-20020a7bc0ca000000b003942a244f34sm12438226wmh.13.2022.05.16.02.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 May 2022 02:30:52 -0700 (PDT)
Message-ID: <700692b8-02a5-8b09-19e1-846c38d3c78f@linaro.org>
Date:   Mon, 16 May 2022 11:30:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [patch 01/10] clocksource/drivers/bcm_kona: Convert to SPDX
 identifier
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     linux-spdx@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom Kernel Team <bcm-kernel-feedback-list@broadcom.com>
References: <20220510171003.952873904@linutronix.de>
 <20220510171254.404209482@linutronix.de>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20220510171254.404209482@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org


Hi Thomas,

I've applied the series

Thanks

On 10/05/2022 19:24, Thomas Gleixner wrote:
> The license information clearly states GPL version 2 only. The extra text
> which excludes warranties is a transcript of the corresponding GPLv2 clause
> 11, which is explicitely referenced for details.
> 
> So the SPDX identifier covers it completely.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: Broadcom Kernel Team <bcm-kernel-feedback-list@broadcom.com>
> Cc: linux-spdx@vger.kernel.org
> ---
>   drivers/clocksource/bcm_kona_timer.c |   14 ++------------
>   1 file changed, 2 insertions(+), 12 deletions(-)
> 
> --- a/drivers/clocksource/bcm_kona_timer.c
> +++ b/drivers/clocksource/bcm_kona_timer.c
> @@ -1,15 +1,5 @@
> -/*
> - * Copyright (C) 2012 Broadcom Corporation
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation version 2.
> - *
> - * This program is distributed "as is" WITHOUT ANY WARRANTY of any
> - * kind, whether express or implied; without even the implied warranty
> - * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - */
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (C) 2012 Broadcom Corporation
>   
>   #include <linux/init.h>
>   #include <linux/irq.h>
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
