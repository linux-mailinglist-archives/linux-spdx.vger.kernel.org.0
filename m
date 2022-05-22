Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0B853051C
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 20:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236775AbiEVSOW (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 14:14:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234665AbiEVSOV (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 14:14:21 -0400
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7521A39B9E
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:14:18 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id ej7so10728612qvb.13
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=opersys-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TJJIlU9Q+hO2C7rEeifXOkCSOO6a44oP/ger3VRA/lY=;
        b=2WcDj2q8sK6OMNwtFQMu0Ag0K5NIyWezbpv2kFhW2nUmZXvIqWUNoU9YJFAYrGT6Qy
         wvLAhRTzvGVCymH9fY/kLcUj6qiaVKr7cxBbVeKXVq6DSmPkr4v6x6LNGWrVgdulBjPv
         i2ahFzwYtY8V2rLuAvKXTHfEFMu25cFzYga9Agneq6q9UaOoI9gOG+FCoWtqrnw1V4PB
         IbUkXpA3FueKrxWEeewudSLBdUI+IVR03a+AU3o7cvfsnQMWOqX+lir4xU7/ZGEgU4jC
         NSZGS3w89f2FcpdDeqNLM7cwJxDSmTWmXhQj88Ym0knQeJFRvAnXr9rT5mYDBozCgIN/
         HlcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TJJIlU9Q+hO2C7rEeifXOkCSOO6a44oP/ger3VRA/lY=;
        b=ronjj7FRnIRapMWjDYBMUlAXji3qQ9EJxGjnX57jVejT3B2go8sgrftf34t7/Z3pzW
         tKMFQRNXjFFLm06LHKvhE4dzUGKmbUtZAc3Xi5iphd9BkAwjBNDC40gzNvkNsdw0DvJI
         EOizHFHVp/cCoyhQK3twJp891LnQTjhh1iqQ5kDUVP3datYd3GBkp/kUa37UnNuDrSZG
         ZJST6pVWcv43TahtqscG/j4F8fzSHmlAjspVpU9enYy9s3pTX3mnvCUaNGcFfTwP4Mj5
         F+P6c4u5q22i8E7Wt/kKXWxYMibyBmKuM/nf3gbtUbOp6QYTqWVOtoVcgmLbKoRDq/ab
         cpDA==
X-Gm-Message-State: AOAM531wz4MyLxjavvS54DyO0x/h6JNenE1L9q+UmdOiaWuLrvtNgx6H
        Y/JitPNofQfB9pd9EDurtaWzPQ==
X-Google-Smtp-Source: ABdhPJwTtQ060vaXPD2mwSIK493ax0fyqA24tZzSRcLgKNFnLCIIZyoX7krYiht9iZRp0d6KPuAzrA==
X-Received: by 2002:a05:6214:2245:b0:461:bc38:1f7d with SMTP id c5-20020a056214224500b00461bc381f7dmr14860499qvc.63.1653243257472;
        Sun, 22 May 2022 11:14:17 -0700 (PDT)
Received: from [192.168.202.90] (modemcable170.15-70-69.static.videotron.ca. [69.70.15.170])
        by smtp.gmail.com with ESMTPSA id i8-20020a05622a08c800b002f908680602sm3073705qte.81.2022.05.22.11.14.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 11:14:17 -0700 (PDT)
Message-ID: <ea34a747-2393-142e-3352-74426975f6f5@opersys.com>
Date:   Sun, 22 May 2022 14:14:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: relay: License cleanup
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>,
        Tom Zanussi <zanussi@kernel.org>
Cc:     linux-spdx@vger.kernel.org
References: <165322122630.3770149.12589163038624151820.tglx@xen13>
From:   Karim Yaghmour <karim.yaghmour@opersys.com>
In-Reply-To: <165322122630.3770149.12589163038624151820.tglx@xen13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org


Hi Thomas,

On 5/22/22 10:54, Thomas Gleixner wrote:
> Tom, Karim!
> 
> As you might know we are working on cleaning up the licensing mess in the
> kernel and convert it to SPDX license identifiers as the only source of
> license information.
> 
> Archaeology found unspecific GPL license references, which have been
> authored by you.
> 
> 1) this file is released under the gpl
> 
>     kernel/relay.c
> 
> Can you please either send cleanup patches for the affected files or
> indicate which GPLv2 variant you had in mind and I run it through my
> cleanup machinery.

Thanks for the ping.

I assume you mean the GPLv2 variants from here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/LICENSES/preferred/GPL-2.0?h=v5.18-rc7

In that case, I'd say that the intent was to follow what Linus had been 
using: i.e. GPL-2.0 or GPL-2.0-only.

That said, since it was Tom that got this code included and did most of 
the work on it, I think he'd have to confirm what his view was as well.

Cheers,

-- 
Karim Yaghmour
CEO - Opersys inc. / www.opersys.com
http://twitter.com/karimyaghmour
