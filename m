Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B238E53FDB8
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241960AbiFGLme (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:42:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbiFGLmd (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:42:33 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 255D321A7
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:42:32 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id CEDBC195FC9
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:42:31 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=32VcZIQrx1Cs
        wZnx9A6owYV/uWPLsQHV+/vcqNwSAII=; b=MoYLBy1YtTdM+EhbGYEYHr/H5fxV
        O+yx6zh8ICGUKcBfrz3NLQv4sXUSqSJNtIfSA2GBn9SlaYcWJnxO2WSuajmGURs2
        +172jL8i4vdbMJt+xSKMTMi4nW72oVIWUg4f7IJgmQN4lUSootHbzSX6e6odEW1O
        qgwDPtLmu5z4NVU=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id C8904195FC8
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:42:31 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=32VcZIQrx1CswZnx9A6owYV/uWPLsQHV+/vcqNwSAII=; b=d5Ofp+H00MawPO7EBPKD/hadz/lwfVFXnSfuCxEgeGy8mUQUuTxPBKM/FQ//e04YSZrLA3wjhyzzt/x02sek86cRKmfvKl4EOuGoH1h5txeF/LTZYLNS4inm5yqyvBk23nhvCqvqdKNyIXs9L+Jd2PgTBTyeAv3X8TFbioGdb7U=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id A9F2F195FC6
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:42:27 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <cbae3c81-1f61-4bf1-133d-78a4015b4cc9@lohutok.net>
Date:   Tue, 7 Jun 2022 07:42:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 08/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_152.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.530587821@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.530587821@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: E831EC5A-E656-11EC-8FC7-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this software is distributed under the terms of the gnu general public
>      license ( gpl ) version 2 as published by the free software foundation
>      this software is provided by the copyright holders and contributors as
>      is and any express or implied warranties including but not limited to
>      the implied warranties of merchantability and fitness for a particular
>      purpose are disclaimed in no event shall the copyright owner or
>      contributors be liable for any direct indirect incidental special
>      exemplary or consequential damages (including but not limited to
>      procurement of substitute goods or services loss of use data or
>      profits or business interruption) however caused and on any theory of
>      liability whether in contract strict liability or tort (including
>      negligence or otherwise) arising in any way out of the use of this
>      software even if advised of the possibility of such damage
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
