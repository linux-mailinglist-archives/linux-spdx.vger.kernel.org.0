Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 145BA5402B3
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 17:49:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239615AbiFGPtB (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 11:49:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230036AbiFGPtA (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 11:49:00 -0400
Received: from mx1.supremebox.com (mx1-c1.supremebox.com [198.23.53.215])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9352FEAD31
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jilayne.com
        ; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Ckv530c5RD3kYSTEzZkvitKBzXAhIfNc/xJ7iG6AQSc=; b=Z4Vh5Gtbw8c44BSnwFxgI5XlUX
        +sbrUXp6IUn/4gRzaW99cN6VIY6QnRyZ1kSBIfJwpY/ozdtqUH9ZWXxi6FlvILLsPdt8jFbOOgEAk
        B6xoURaYkTnki2VG5CbQDnGzoYaWuYr6ECEpVJtzN+0fjX+NRxoh5VAXF2m9M0uzgqQk=;
Received: from 71-211-138-118.hlrn.qwest.net ([71.211.138.118] helo=[192.168.0.91])
        by mx1.supremebox.com with esmtpa (Exim 4.92)
        (envelope-from <opensource@jilayne.com>)
        id 1nybRx-0002gj-Pm; Tue, 07 Jun 2022 15:48:58 +0000
Message-ID: <2d7979c1-e429-f5db-8d57-ac3a7b3a0b8a@jilayne.com>
Date:   Tue, 7 Jun 2022 09:48:56 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Subject: Re: [Batch 1 - patch 01/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_8.RULE
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org
References: <20220606195511.940411730@linutronix.de>
From:   J Lovejoy <opensource@jilayne.com>
In-Reply-To: <20220606195511.940411730@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Sender-Ident-agJab5osgicCis: opensource@jilayne.com
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org



On 6/6/22 1:58 PM, Thomas Gleixner wrote:
> Folks!
> References: <20220606194042.428568932@linutronix.de>
> MIME-Version: 1.0
> Content-Type: text/plain; charset=UTF-8
>
> Based on the normalized pattern:
>
>      this program is free software you can redistribute it and/or modify it
>      under the terms of the gnu general public license version 2 as
>      published by the free software foundation
>
> extracted by the scancode license scanner the SPDX license identifier
>
>      GPL-2.0-only
>
> has been chosen to replace the boilerplate/reference.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>   Documentation/driver-api/vfio-mediated-device.rst |    4 +---
>   arch/arm/boot/bootp/bootp.lds                     |    5 +----
>   include/linux/input/elan-i2c-ids.h                |    5 +----
>   3 files changed, 3 insertions(+), 11 deletions(-)
>
> --- a/Documentation/driver-api/vfio-mediated-device.rst
> +++ b/Documentation/driver-api/vfio-mediated-device.rst
> @@ -1,3 +1,4 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
>   .. include:: <isonum.txt>
>   
>   =====================
> @@ -8,9 +9,6 @@ VFIO Mediated devices
>   :Author: Neo Jia <cjia@nvidia.com>
>   :Author: Kirti Wankhede <kwankhede@nvidia.com>
>   
> -This program is free software; you can redistribute it and/or modify
> -it under the terms of the GNU General Public License version 2 as
> -published by the Free Software Foundation.
>   
>   
>   Virtual Function I/O (VFIO) Mediated devices[1]
> --- a/arch/arm/boot/bootp/bootp.lds
> +++ b/arch/arm/boot/bootp/bootp.lds
> @@ -1,11 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>   /*
>    *  linux/arch/arm/boot/bootp/bootp.lds
>    *
>    *  Copyright (C) 2000-2002 Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>    */
>   OUTPUT_ARCH(arm)
>   ENTRY(_start)
> --- a/include/linux/input/elan-i2c-ids.h
> +++ b/include/linux/input/elan-i2c-ids.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>   /*
>    * Elan I2C/SMBus Touchpad device whitelist
>    *
> @@ -11,10 +12,6 @@
>    * copyright (c) 2011-2012 Cypress Semiconductor, Inc.
>    * copyright (c) 2011-2012 Google, Inc.
>    *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License version 2 as published
> - * by the Free Software Foundation.
> - *
>    * Trademarks are the property of their respective owners.
>    */
>   
Reviewed-by: Jilayne Lovejoy <opensource@jilayne.com>

