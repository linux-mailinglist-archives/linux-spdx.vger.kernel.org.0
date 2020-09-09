Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 596C6262743
	for <lists+linux-spdx@lfdr.de>; Wed,  9 Sep 2020 08:38:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726293AbgIIGiD (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 9 Sep 2020 02:38:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725877AbgIIGiA (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 9 Sep 2020 02:38:00 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EA95C061573
        for <linux-spdx@vger.kernel.org>; Tue,  8 Sep 2020 23:37:59 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id c8so1465369edv.5
        for <linux-spdx@vger.kernel.org>; Tue, 08 Sep 2020 23:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=OdX0XLqV/D/rU3RIyWxBK8n5hXQtKTt0nIYaGF7q+y8=;
        b=SsYW3Kv8x5G4Gz8eMmEqoxkh49TAK4jQPgpUXhUNS7GIr+qKYQ4TLAkaXmr5CrCm7R
         JtqIb7YB7W+SemDvim7Nraku8ZblFTlvdDM8sRoxo6Jmh2s2/SHYbAnnie9x5Rm6VqBI
         4Ch+pdmKv26SZ2yF9S/BSg9hfgMgprq6rxtpNKXUsMpgp2laT40QlYUFAhJ2O93KLtAq
         UU8B7XOHXKcNYUYbGDDiJ0geXjFS5KOuJKif8cRPVeFBwinxRi47j/Q3fDp8YY2LMYmz
         +rGA0F73XeQz0/ZWpKJ5sZ/ZZTrPpt7lD/jXFL3L1n4DfJeEFO2unOSD3NjsVczetCSh
         XX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=OdX0XLqV/D/rU3RIyWxBK8n5hXQtKTt0nIYaGF7q+y8=;
        b=KH2qEmntLYYt8JAQADYrPN03YRwmrQNLIMmnZuty0zPhGkFX7nzOv2XJdaGD8El7g1
         vUGQhQhuiheSa97qrGBJeFowOTnxiINPb7qpZiCbXhBKDrx1Ftq0nole7uMTLM9q4gij
         3289gIu+HAan0BwoExxbmKZFXd/uReHbsWFosHy5nRAduW0Etggbdi05GDvq5FF0cT2t
         KIXMRE0RRrGV9S9nuagUWBzEDXsbvEOgrRhXEFpGFoLGXnujoW6/z+FvKcbJmZ6eRXWE
         Atp+ABOfXu8cCHLC4aZGCyj2MPwPY7mQQMlCFWyh2GSgjS+vD+ShVra51NHt1cniit6b
         YIWw==
X-Gm-Message-State: AOAM530PyxAvwCIpwHZlB4aoRcN+EWt52N3P+Asypm43YMAFx6ivNuZg
        oSXvaeQj3OGsd0bOnPgGUXGhgzPNAawZ7g==
X-Google-Smtp-Source: ABdhPJzHDWdntnfCW4DQ868pmddakF0nsMBODiyB0/WZk7eNlV6seby0I2djYUDNAEBaDz8J2FntIg==
X-Received: by 2002:a05:6402:292:: with SMTP id l18mr2729205edv.6.1599633478075;
        Tue, 08 Sep 2020 23:37:58 -0700 (PDT)
Received: from felia ([2001:16b8:2d44:6000:6108:df55:7b8e:67d4])
        by smtp.gmail.com with ESMTPSA id q10sm1080191eja.107.2020.09.08.23.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 23:37:57 -0700 (PDT)
From:   Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Google-Original-From: Lukas Bulwahn <lukas@gmail.com>
Date:   Wed, 9 Sep 2020 08:37:49 +0200 (CEST)
X-X-Sender: lukas@felia
To:     Nilesh Javali <njavali@marvell.com>
cc:     Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        GR-QLogic-Storage-Upstream <GR-QLogic-Storage-Upstream@marvell.com>,
        GR-Linux-NIC-Dev <GR-Linux-NIC-Dev@marvell.com>,
        Shahed Shaikh <shshaikh@marvell.com>,
        Manish Chopra <manishc@marvell.com>,
        "linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [EXT] SECOND REMINDER on Qlogic driver license conversion
In-Reply-To: <DM6PR18MB305281D28830537F81914796AF260@DM6PR18MB3052.namprd18.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.2009090834080.5622@felia>
References: <alpine.DEB.2.21.2008270740140.31123@felia> <DM6PR18MB30524C8D1F431EC8316C4051AF510@DM6PR18MB3052.namprd18.prod.outlook.com> <DM6PR18MB305281D28830537F81914796AF260@DM6PR18MB3052.namprd18.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org



On Wed, 9 Sep 2020, Nilesh Javali wrote:

> Lukas, Thomas,
> 
> We have got green signal from our internal legal and would like to give ACK for qla2xxx and qla4xxx driver license conversion.
> 
> Acked-by: Nilesh Javali <njavali@marvell.com>
>

Nilesh, that is great!

In the meantime, I have rebased Thomas' patchset from 2019 to v5.9-rc4 
here:

https://lore.kernel.org/linux-spdx/20200908123451.7215-1-lukas.bulwahn@gmail.com/

Nilesh, can you ack all those patches in that patchset, please?

And quickly answer if you pick up those patches or if they shall travel 
through the spdx tree.

Thanks,

Lukas
