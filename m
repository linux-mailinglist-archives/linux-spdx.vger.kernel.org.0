Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A20853FE1D
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:57:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234614AbiFGL5r (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:57:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229721AbiFGL5p (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:57:45 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E724F35864
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:57:43 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id EC688196135
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:57:42 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=micJGdgxJSWT
        34tvdHC9IWUWmo3lqqC/fti+pCQZyzs=; b=vLuP1EoIDeI7Eh9c0n74808X5eoT
        cY/XM/tgnqwm7OjWjCeB3p1g3GUMnmZO1MPapibmS+gT6cDa7QvujZyWopRsnQ5K
        T0Mk/OSbDzs7p2VesPmD9zfUhi63IKK9sdqAmLrVtJhJoHjy+LQXX0UuUBCElr5L
        zYyfvxg86VPUVi8=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id D4180196134
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:57:42 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=micJGdgxJSWT34tvdHC9IWUWmo3lqqC/fti+pCQZyzs=; b=fhIRwb9MxNiBHZnlgwJXLNQXZQpjl04Q9F0BpA6obG6bJ6b0aJxrwDL3KHTDvkUjol0KXsVcjNFSWcjbHENFVag7G5pQYyjboKmUiXaKfCFRACeJ/K5rPBsFY3M/SRj9q5qbY12/VvkcSR8O24eWrXW4t/gbYGaXPiP4rH8UqNQ=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 95703196133
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:57:38 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <14fa42b9-1cad-ec18-fe0e-bd6a5a74b84f@lohutok.net>
Date:   Tue, 7 Jun 2022 07:57:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 18/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_320.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200811.131052922@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200811.131052922@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 072C3992-E659-11EC-BF32-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this program is free software you can redistribute it and/or modify it
>      under the terms of the gnu general public license version 2 as
>      published by the free software foundation  this program is distributed
>      as is without any warranty of any kind whether express or implied
>      without even the implied warranty of merchantability or fitness for a
>      particular purpose see the gnu general public license for more details
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
