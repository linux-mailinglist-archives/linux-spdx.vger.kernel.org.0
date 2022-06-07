Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08AED540324
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 17:54:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344759AbiFGPyj (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 11:54:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344732AbiFGPyT (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 11:54:19 -0400
Received: from mx1.supremebox.com (mx1-c1.supremebox.com [198.23.53.215])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23A64100518
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jilayne.com
        ; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=VgvZdQ8xTNTqfgcSBsKb3lakZlc0CX4J0gA3rJ4JSKc=; b=MVL/oFgrFlLes630YvRDGmq7iz
        qkOktuTLepCusI92wO2tuPluOLjk7g21hgeRYA22uNdj9yBgwuF7ItuSqHiClvL26+opF00tD02ci
        L36oAEp87mG3zaxA4iY4LjNS5yReqXX+A9xqVFQgGxfZR0uZe4oK4/MWDDZ0uzQM42so=;
Received: from 71-211-138-118.hlrn.qwest.net ([71.211.138.118] helo=[192.168.0.91])
        by mx1.supremebox.com with esmtpa (Exim 4.92)
        (envelope-from <opensource@jilayne.com>)
        id 1nybWV-0000PB-IA; Tue, 07 Jun 2022 15:53:39 +0000
Message-ID: <6965a1b2-8d31-16d3-019e-c6ae526f62d8@jilayne.com>
Date:   Tue, 7 Jun 2022 09:53:38 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Subject: Re: [patch V2 00/24] The first batch of various GPLv2 boilerplates
 and references
Content-Language: en-US
To:     Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org
References: <20220607131425.436789559@linutronix.de>
From:   J Lovejoy <opensource@jilayne.com>
In-Reply-To: <20220607131425.436789559@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Sender-Ident-agJab5osgicCis: opensource@jilayne.com
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SCC_BODY_URI_ONLY,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org



On 6/7/22 8:11 AM, Thomas Gleixner wrote:
> Folks!
>
> This is version 2 of the first batch. Changes to version 1:
ah, so should ignore the previous set with the subject line beginning 
with "Batch 1 - . . . " and only respond to the following set with the 
subject line beginning with "V2 . . ."?
>
>       - Dropped the patches which were identified by Richard as problematic
>
>       - Collected Reviewed-by tags as appropriate. Thanks Allison!
>
>       - Split the v1 patches 3, 4 and 10 into parts so they fit into the
>         size limit of the mailing list. Those are now patches 2-6 and 12-13
>
> The series is also available from git:
>
>      git://git.kernel.org/pub/scm/linux/kernel/git/tglx/linux-spdx.git 2022-batch1
>
> Thanks,
>
> 	tglx

