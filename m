Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F36F053FDA6
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 13:38:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240217AbiFGLir (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 07:38:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237616AbiFGLiq (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 07:38:46 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6E218BD0D
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 04:38:45 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id B336C195F74
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:38:44 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=FuEg7fp+xG0v
        eDhlr3+0l5BbGqnPAP0r1HEz7uE/pik=; b=Xp6tqF2RKcfiAuM1jwujGIpeC2rO
        xa+uGzzs1oJwacl/OnWHpNJrcu3Mbx3cS9GDslLRi3Ybx9oz7hNukqrutPlo7h0D
        3u7oXrbjrGBWIL5pa2hXe/6bLH0wjE5HT4fAAe3ClmluMSCo9ZPQdz649ccHhX3e
        Oht519X+N9E7Nzs=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id AB946195F73
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:38:44 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=FuEg7fp+xG0veDhlr3+0l5BbGqnPAP0r1HEz7uE/pik=; b=G8MusGAvIzCfrCLpx47iSSmVp23PPiI/Hy4b4umDhrscNL4OC+0U+qqLVZgb6ligD6uL73R2kcYrrFruoemHwqMGGpZD5XbDllSXOCgA5JmJx1epgBOe7vayP2T6WmMAZwd52htPedjC4unP4c60e89IMH6LdGd5IjFSX2YEBSk=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 99877195F72
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:38:40 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <d93e6557-006a-97fb-848e-b0e8220ebcfa@lohutok.net>
Date:   Tue, 7 Jun 2022 07:38:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 05/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_133.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.359517821@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200810.359517821@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 60D9E8AC-E656-11EC-9E35-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      in the hope that it will be useful merchantability or fitness for a
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
