Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C41E05401C8
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:50:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236008AbiFGOuT (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343677AbiFGOuS (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:50:18 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D1839E9FF
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:50:16 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 0E3651974A6
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:50:16 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=RJwqpbKslg/C
        z/oYZjEM2znrXNUHG92/aJei1JByuMQ=; b=lSuti+SKvZhyDD+pzlzdDqbFhnJO
        B4OrMGlDUbiWrUSb3oZgerwYt3aigIkjIacm6MvvxeD/O7a9cQSQ5j8VpDUJOT9R
        3PeBxOmdmV+rTp9iVev4J8kQEXwe7WhKs7jzcQftICwxM+algz7+mMRkLvfjbJ+s
        QAdYWtNNsZzAcos=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 0768D1974A5
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:50:16 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=RJwqpbKslg/Cz/oYZjEM2znrXNUHG92/aJei1JByuMQ=; b=lL1lFsJsilL7/XIRTJT4TJ3xLqaWsFx8WgNNXWhzigg/X45HN70tbkPhzm9a1Yx4PgCt1BxAF/QKeuONswZjzOWW5vXCoR3mVxavS0hC3o7vydJORV0F+ECx+Gba1WnPlNnvAiLzsDhc+Qxf4/a8HoWr3B+C4pXq/48GZ9stqXE=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 831531974A4
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 10:50:11 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <efce9b5c-3568-0c2a-4ca3-0b5d86969add@lohutok.net>
Date:   Tue, 7 Jun 2022 10:50:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch V2 03/24] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_30.RULE (part 2)
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220607131425.436789559@linutronix.de>
 <20220607131510.535061042@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220607131510.535061042@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 21FE838E-E671-11EC-A366-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_CSS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 6/7/22 10:11, Thomas Gleixner wrote:
> Based on the normalized pattern:
> 
>      this program is free software you can redistribute it and/or modify it
>      under the terms of the gnu general public license as published by the
>      free software foundation version 2  this program is distributed as is
>      without any warranty of any kind whether express or implied without
>      even the implied warranty of merchantability or fitness for a
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
