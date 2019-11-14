Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AD3C5FBE53
	for <lists+linux-spdx@lfdr.de>; Thu, 14 Nov 2019 04:32:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726505AbfKNDcQ (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 13 Nov 2019 22:32:16 -0500
Received: from mail.kernel.org ([198.145.29.99]:34302 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726489AbfKNDcQ (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Wed, 13 Nov 2019 22:32:16 -0500
Received: from localhost (unknown [124.219.31.93])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 54302206CC;
        Thu, 14 Nov 2019 03:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1573702335;
        bh=k6rDRWHF8rlDKpcD7ZAxWPg4f6vvUEyBRv/SbXMTQ6g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=xBDO0coB2EeMZXpW/+qOtPjC63t0L+fw3Y7r82WKI81GzdhJ0knNgan9EDg/FxO7p
         o916uEjeVza/RyYmCL/kUpRY5SR+OyvEMq52ggec14BW/0HrSAThXaXDQBY4L7OqjH
         16Q1z5bN5DwdBZfb3xVh7LB6x7oEOcfwEUYqxKjs=
Date:   Thu, 14 Nov 2019 11:32:12 +0800
From:   Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To:     Masahiro Yamada <yamada.masahiro@socionext.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-spdx@vger.kernel.org
Subject: Re: [PATCH] export,module: add SPDX GPL-2.0 license identifier to
 headers with no license
Message-ID: <20191114033212.GA161229@kroah.com>
References: <20191018045053.8424-1-yamada.masahiro@socionext.com>
 <20191018101510.GA1172290@kroah.com>
 <CAK7LNAS3oYkaBTG+59prgu0Yqxn=2vi94mjHbKdx7TXBkPy5Xw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK7LNAS3oYkaBTG+59prgu0Yqxn=2vi94mjHbKdx7TXBkPy5Xw@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Wed, Nov 13, 2019 at 08:46:11PM +0900, Masahiro Yamada wrote:
> On Fri, Oct 18, 2019 at 7:15 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Fri, Oct 18, 2019 at 01:50:53PM +0900, Masahiro Yamada wrote:
> > > Commit b24413180f56 ("License cleanup: add SPDX GPL-2.0 license
> > > identifier to files with no license") took care of a lot of files
> > > without any license information.
> > >
> > > These headers were not processed by the tool perhaps because they
> > > contain "GPL" in the code.
> > >
> > > I do not see any license boilerplate in them, so they fall back to
> > > GPL version 2 only, which is the project default.
> > >
> > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> >
> > Ah, nice catch!
> >
> > I'll queue this up to my spdx tree if no one objects.
> >
> > thanks,
> >
> > greg k-h
> 
> 
> No objection (comment) so far.
> 
> I think it is OK to apply this.

Ok, will go do so, thanks.

greg k-h
