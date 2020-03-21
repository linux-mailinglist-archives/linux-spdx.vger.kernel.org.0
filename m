Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9761918E3BF
	for <lists+linux-spdx@lfdr.de>; Sat, 21 Mar 2020 19:47:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727565AbgCUSrg (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sat, 21 Mar 2020 14:47:36 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:44011 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727028AbgCUSrf (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sat, 21 Mar 2020 14:47:35 -0400
Received: by mail-pl1-f193.google.com with SMTP id f8so3968497plt.10
        for <linux-spdx@vger.kernel.org>; Sat, 21 Mar 2020 11:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=AnR6hfXloIQv8auYA+GHfwp/m7H+vf5QROD5gpqvvmg=;
        b=10EtXnXim5Hg4Cpui4GMpkO0QIfiWEDtP+YwkxpeF+mQBy8yZZ8KHf60FeUTd3kP4q
         8FIVPRoaEf+I/FCmeBRJvcgxNMsttS1OXFLHq2D9SsOdmuZAHpzZPS4/RwiYRU6EudO/
         NW9UrDy5GfDQo24rXziWK4S9VwzL+VmFFwAnxFxn/mStyBMamUc5hWvIQYXJMXCLoCzW
         7rto2tts0ZQPJSO8fzCXrsCJOuBBeSL8eU9AMr9FJkbNXhzHvjQwXrvihdGmOoTjZoSy
         qxHKPmo7PhXOjQTt1O3NX5bRN2FrAZkQFlX0W/HEh+YwAsnNejyYchQKKlhPEPiO8iN5
         I4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=AnR6hfXloIQv8auYA+GHfwp/m7H+vf5QROD5gpqvvmg=;
        b=dNko3eYCS2qNemnXwA8igKQBF7JSu4/JgbAxSorMUhU+wcjnHP+uaSsEOVUC+MbiFr
         beUS1NIPjKK2bs+XIXEjJ+m0cKZ8Oq3AqaQuSxMs/Qj7RTejQyp5De9ZIEkNgp0dv6In
         eBGw3dMOHwIqWaTqntFRwiO3nrEX0j4ULYg0Db5Tl6dklMulXurDLZVtAKwnQjt//mvK
         5VsGuWxkyiBYrE7r2B9Eybu9S348xLQID9E+/N9sAp2bItgRddpoxKXSt7hn6QKoCDN4
         RSHtRbeK7h3498lV7dRKZSB1HyMDCr5tKebwpSsMaypbJP68z+t8/nFSawdfcd/h6ukt
         APCA==
X-Gm-Message-State: ANhLgQ0xCjuG6/iki4AoGuRdzLLF/pCnroqUPERps88JVcdYODZm57H6
        87uKtFXyPZ5h5iIbprMAiRLd0Q==
X-Google-Smtp-Source: ADFU+vs0FwNwvYJsQkFQFEcpXFJzigfrsVLfelXzkPadvRe0lL/cnt4AkOx4y/HBFYRg/dis9wEHwA==
X-Received: by 2002:a17:902:34f:: with SMTP id 73mr13708424pld.50.1584816453585;
        Sat, 21 Mar 2020 11:47:33 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
        by smtp.gmail.com with ESMTPSA id f15sm6924004pfq.100.2020.03.21.11.47.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 11:47:33 -0700 (PDT)
Subject: Re: [PATCH] ionic: make spdxcheck.py happy
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>, netdev@vger.kernel.org
Cc:     linux-spdx@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200321120514.10464-1-lukas.bulwahn@gmail.com>
From:   Shannon Nelson <snelson@pensando.io>
Message-ID: <0c80a012-738e-dddc-4287-35a6a90fda86@pensando.io>
Date:   Sat, 21 Mar 2020 11:47:31 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200321120514.10464-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 3/21/20 5:05 AM, Lukas Bulwahn wrote:
> Headers ionic_if.h and ionic_regs.h are licensed under three alternative
> licenses and the used SPDX-License-Identifier expression makes
> ./scripts/spdxcheck.py complain:
>
> drivers/net/ethernet/pensando/ionic/ionic_if.h: 1:52 Syntax error: OR
> drivers/net/ethernet/pensando/ionic/ionic_regs.h: 1:52 Syntax error: OR
>
> As OR is associative, it is irrelevant if the parentheses are put around
> the first or the second OR-expression.
>
> Simply add parentheses to make spdxcheck.py happy.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Acked-by: Shannon Nelson <snelson@pensando.io>

> ---
>   drivers/net/ethernet/pensando/ionic/ionic_if.h   | 2 +-
>   drivers/net/ethernet/pensando/ionic/ionic_regs.h | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_if.h b/drivers/net/ethernet/pensando/ionic/ionic_if.h
> index 54547d53b0f2..51adf5059834 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_if.h
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_if.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB OR BSD-2-Clause */
> +/* SPDX-License-Identifier: (GPL-2.0 OR Linux-OpenIB) OR BSD-2-Clause */
>   /* Copyright (c) 2017-2019 Pensando Systems, Inc.  All rights reserved. */
>   
>   #ifndef _IONIC_IF_H_
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_regs.h b/drivers/net/ethernet/pensando/ionic/ionic_regs.h
> index 03ee5a36472b..2e174f45c030 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_regs.h
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_regs.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB OR BSD-2-Clause */
> +/* SPDX-License-Identifier: (GPL-2.0 OR Linux-OpenIB) OR BSD-2-Clause */
>   /* Copyright (c) 2018-2019 Pensando Systems, Inc.  All rights reserved. */
>   
>   #ifndef IONIC_REGS_H

