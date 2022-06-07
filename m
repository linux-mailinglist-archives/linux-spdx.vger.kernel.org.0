Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A821653FE67
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 14:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241135AbiFGMKb (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 08:10:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243414AbiFGMHx (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 08:07:53 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09D1A7CB39
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:07:46 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id CB01A1962E6
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:07:45 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=4hXs8iLR92Cf
        vrb5aIUwb4eOkMxJ5Eia2mDl89g3Da4=; b=FiBbvASDhpYWrbipPm4BqsRmm3dd
        2nplPiYy6YgNl3wAoJBqEgmtqM196GVc4LaQoXzGqzcUy08yYZPKM9jHGHGUQ040
        qIzBg7Z71xwNHzQ34ueHe/VCLnY2AYc58teKXrMVIGs0Q2aFKotWCJebAC01HV5S
        /mucNgED7iS+DXU=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id C44261962E4
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:07:45 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=4hXs8iLR92Cfvrb5aIUwb4eOkMxJ5Eia2mDl89g3Da4=; b=nRBU2zZB2c/4dtaD6P1OI/7S+rvZYydbO0fQkeUpo2YVDLFJ5oB228QPjqWQd3Vq2yJj6DiS86ALuZM9ZoK9R9yJlir2byU7AHyw80Ra418P+AifVTytwUZahj9/W7LM/IBzv4hJwSlDpjpIGzuVqHp5WqUTqZpIs+82sQTCrFk=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id A42E01962E3
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:07:41 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <e8dcd456-bdb8-d492-e0be-038aeab39450@lohutok.net>
Date:   Tue, 7 Jun 2022 08:07:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch 24/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_406.RULE
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220606200732.204209102@linutronix.de>
 <20220606200811.476746257@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220606200811.476746257@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: 6E986104-E65A-11EC-8643-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
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
>      this file is licensed under the term of the gnu general public license
>      version 2 the program licensed as is without any warranty of any kind
>      whether express or implied
> 
> extracted by the scancode license scanner the SPDX license identifier
> 
>      GPL-2.0-only
> 
> has been chosen to replace the boilerplate/reference.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Allison Randal <allison@lohutok.net>
