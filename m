Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E87DB1925B3
	for <lists+linux-spdx@lfdr.de>; Wed, 25 Mar 2020 11:35:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727430AbgCYKfa (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 25 Mar 2020 06:35:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:44112 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726043AbgCYKfa (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Wed, 25 Mar 2020 06:35:30 -0400
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id AAF2020772;
        Wed, 25 Mar 2020 10:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1585132528;
        bh=1A6rNb4E0Q0pJQguCVoz1LWxBQra8oiCyqNMfB8hxtU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YRnMLl/GAv74bb4G1X8jwJAlgaSVgcA51h2S7Mt4rvWW2me1iTeYXclfwgZGMmGa4
         kYbvWxPDdTL7VRRP3b8bdYD92yN11+If8wwXhAPNorVh3YRvMB4PDPGMWC/dBEK5i6
         S2wU7OKKbMSwXB5iHNFYxz9JCBkQVY4djMpr3HiE=
Date:   Wed, 25 Mar 2020 11:35:25 +0100
From:   Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To:     Masahiro Yamada <masahiroy@kernel.org>
Cc:     linux-spdx@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] .gitignore: add SPDX License Identifier
Message-ID: <20200325103525.GA3086352@kroah.com>
References: <20200303133600.9263-1-masahiroy@kernel.org>
 <20200303133600.9263-2-masahiroy@kernel.org>
 <CAK7LNARZUpDKXpniNZ+_=G5Gskebc0HEHT5TKbaz2Xs_Ni6u4g@mail.gmail.com>
 <20200325101838.GA3084128@kroah.com>
 <CAK7LNAQtxwXzmHXr6GMm_BrEvittoUHJkrROVFX02if5BTCgGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK7LNAQtxwXzmHXr6GMm_BrEvittoUHJkrROVFX02if5BTCgGw@mail.gmail.com>
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Wed, Mar 25, 2020 at 07:21:39PM +0900, Masahiro Yamada wrote:
> On Wed, Mar 25, 2020 at 7:18 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Mar 25, 2020 at 07:10:03PM +0900, Masahiro Yamada wrote:
> > > On Tue, Mar 3, 2020 at 10:36 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > Add SPDX License Identifier to all .gitignore files.
> > > >
> > > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > >
> > >
> > > Ping?
> >
> > Ah, I just assumed you would take these through your tree, sorry about
> > that.
> >
> > Both look find:
> >
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> > Or do you want me to take these?
> >
> 
> Yes.
> That is why I sent this to linux-spdx ML,
> which seems a valid path.

Ok, will take this now, thanks for the ping.

greg k-h
