Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBED18CE59
	for <lists+linux-spdx@lfdr.de>; Fri, 20 Mar 2020 14:01:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727021AbgCTNBT (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 20 Mar 2020 09:01:19 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:45937 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726814AbgCTNBS (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 20 Mar 2020 09:01:18 -0400
Received: by mail-qk1-f195.google.com with SMTP id c145so6599929qke.12
        for <linux-spdx@vger.kernel.org>; Fri, 20 Mar 2020 06:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7TuRXOsRb6VN2k9fT/xXrRf7kwsC1S56wwwyKIf4nJ0=;
        b=KSyB0Abc+yPjygp5KB74BXi/zimVaZDkiP3XhX2q4scuUv9ycfb43bbDcBEUnSJ9GB
         8d2eT6OKAGZxUBl8+tylt2480GyXqPD4yQ5pREMgA8VhQ7rjtd1tsiseAhppA6MEIQQP
         yVIJmGROEo1FeilPTgvqIDPUMANnFnphoE2tCB08ATAgTYikcpnnsdwzx5rEzm85wwT1
         ExHcqSZR3JHNlcMKP4P5lBQBLV1ou8ZdipHWg+dwUZqqapX/c/bsTv5cqbkExalTPzUS
         6NdIx6b8qoCiZGVtNR6OAfzl5DnUYssGTlnWChINnX+gAw53qFZydih07UikqeQsgW4a
         qtKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7TuRXOsRb6VN2k9fT/xXrRf7kwsC1S56wwwyKIf4nJ0=;
        b=TWTVuN2RqEja92Yq9EwkYBP407tT8v1gWKB+3mT3WtG7RsVCk8mXgRfGVeC0OupIaK
         mIDHMNpRLRgy3EBHFBvCtqrZv8ilLL2VfP3P7RiAbUpTdPq27MhVSH6lcbLANd/qoP55
         DChBR9q/O/Az5fNRLHw/nHNtnWFSjsgyvaMGXgspfX8ftGUrxhypVzKGEmScHd38p8Gz
         xjbtF1LTJOz4gQUl/tVBekao2/fkYxaXCqym0CvWmv0RBkcFgn4CRPPMnkMSRA8BnuVO
         VNQ8Sw7H9Kpjx+6eLgtkCByBOdxrSzHG0Rhm97lyN2qwgC0P3og+r23UAXATr93INQa2
         wJKQ==
X-Gm-Message-State: ANhLgQ0AwdjOFkYSdrHlnH2Lcp9PaR8vHbdT/PgPkMltEHfHC5GLaI8w
        2ERy7l+/l0Dz4OhxOmd+j5xLkQ==
X-Google-Smtp-Source: ADFU+vsgFL3N2gBIP1ZkQjStMaw38H11H5bXUTfAzXb2ivjqVG+LYpo5fGcS/MG8QoDUpYoYiLq1ig==
X-Received: by 2002:a37:981:: with SMTP id 123mr7835936qkj.154.1584709277584;
        Fri, 20 Mar 2020 06:01:17 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id s36sm4571907qtb.28.2020.03.20.06.01.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 20 Mar 2020 06:01:16 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
        (envelope-from <jgg@ziepe.ca>)
        id 1jFHH1-0007Fz-Vx; Fri, 20 Mar 2020 10:01:15 -0300
Date:   Fri, 20 Mar 2020 10:01:15 -0300
From:   Jason Gunthorpe <jgg@ziepe.ca>
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     Elliott Hughes <enh@google.com>, tglx@linutronix.de,
        linux-spdx@vger.kernel.org, linux-rdma@vger.kernel.org
Subject: Re: [PATCH] uapi/rdma/: add SPDX for remaining OpenIB headers.
Message-ID: <20200320130115.GR20941@ziepe.ca>
References: <20200320004836.49844-1-enh@google.com>
 <20200320071453.GA309332@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200320071453.GA309332@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, Mar 20, 2020 at 08:14:53AM +0100, Greg KH wrote:
> On Thu, Mar 19, 2020 at 05:48:36PM -0700, Elliott Hughes wrote:
> > These header files have the same copyright as others in this directory
> > that have this SPDX line.
> 
> No signed-off-by: line?  :(
> 
> Fix that up and I'll be glad to take these, if the rdma developers don't
> want to.

It is no problem, RDMA patches can flow through the RDMA tree

Jason
