Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B899253FDC3
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbiFGLpR (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:45:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243114AbiFGLpH (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:45:07 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C021F7893D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:45:05 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 56391195FEB
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:45:05 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=zleyUrb/LO4i
        Ge3e1ap8YAMvLGK3tkb8KXnRsIbwajs=; b=LtrWxyP4RaeugjcFgF+5G++0nySt
        6ZeGZk3EklQnwIqxXdbdVzy9TsWlfnBcdtCb/2GGzybJCkAMHSvUW4DmbqzchD3W
        isazvsrJu81B9nKE9OMd3gW9nOODAED3ufuIewP+zSPk5ZdFxIWb/jdxzazhmsfC
        v7WPmhJEnlkBh3k=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 4F58A195FEA
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:45:05 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=zleyUrb/LO4iGe3e1ap8YAMvLGK3tkb8KXnRsIbwajs=; b=Y9ou1KLU1hO8X40Sv1oOG/y2jAowgxE4N2YWeDV2ZVwfpaQ9a4Nq3Pxfr3p87hTRuY2szQ/MSkj70AE7YQT4qytbu3pyG2hIND2zIbSECRVpMH8/hCBu0JselClgqTVJZJMBgkOGBTzY1ZTXhqKCnJYkK6ZLDbMA9+jLNpXEdp8=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 3CE6D195FE5
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:45:00 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <163cf24e-3bcf-e94c-9c38-f8f5d802a460@lohutok.net>
Date:   Tue, 7 Jun 2022 07:44:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 11/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_179.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.708968350@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.708968350@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 432494DC-E657-11EC-BDC8-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_CSS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 6/6/22 16:10, Thomas Gleixner wrote:
> Based on the normalized pattern:
> 
>      gpl header start  do not alter or remove copyright notices or this
>      file header  this program is free software you can redistribute it
>      and/or modify it under the terms of the gnu general public license
>      version 2 only as published by the free software foundation  this
>      program is distributed in the hope that it will be useful but without
>      any warranty without even the implied warranty of merchantability or
>      fitness for a particular purpose see the gnu general public license
>      version 2 for more details (a copy is included in the license file
>      that accompanied this code)  you should have received a copy of the
>      gnu general public license version 2 along with this program if not
>      see http://www gnu org/licenses  please visit http://www xyratex
>      com/contact if you need additional information or have any questions
>      gpl header end
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
