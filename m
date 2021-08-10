Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9CE23E84E4
	for <lists+linux-spdx@lfdr.de>; Tue, 10 Aug 2021 23:00:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231894AbhHJVBV (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 10 Aug 2021 17:01:21 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:45928 "EHLO
        galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233782AbhHJVBU (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 10 Aug 2021 17:01:20 -0400
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1628629257;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+kNEFWBE6RrK5jDlol8kVe8T5lcS2vZ2vfroSLYD7d4=;
        b=M842l2Up1saVsH/qdA4VdlM2FrsIhbiR95qevIneEix44joRWjZQ2aAASj5pbYrPDTrnOE
        V6XZvtZq171emPK6JCz2y4V/vHs2KiYuuS27LuBJVZ6KksNAf1kUVzAltHwnDNG35zdEQm
        XgVWw+4FRl95/R6L89RSa9dXogUoMc4yhqVEYTUIVuwwIEk48KeENDvn0SVAnNOA1bO0eD
        nwfxELbnkdYroYUWa1IgsHB7sgOAe1OqiBYTqlCA5RDn73HlGpvGch8csBerSrFyd6lD/9
        1H937btPC/5AaT0lKJE2e5NniePDhBypFxA9f1ROTtfKmZbRoye1KsJicZArpg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1628629257;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+kNEFWBE6RrK5jDlol8kVe8T5lcS2vZ2vfroSLYD7d4=;
        b=wBoqejVCmY8Bex0gyAwtcL64hHT83+x1/xj6xJVQC+p2CFD1phZ8sg8FeAJMT2j5OrS9CB
        OYNw1I22SSY3QCAw==
To:     Christoph Hellwig <hch@infradead.org>,
        Nicky Chorley <ndchorley@gmail.com>
Cc:     Greg KH <gregkh@linuxfoundation.org>, linux-spdx@vger.kernel.org
Subject: Re: Fwd: scripts/spdxcheck.py's third-party dependencies
In-Reply-To: <YRKv6cpxaUfa6Abv@infradead.org>
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan>
 <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
 <YP+sCqNlB2g/srHc@kroah.com>
 <CAG-xSobn6hyMpuhiwMLpTQ7X00xQRNW6-jf9pk5g2UfApzHBsw@mail.gmail.com>
 <YQvX4u/H8cV1pAPu@kroah.com>
 <42bfb9dc-3bbf-eba6-d1e9-ae56bc49f94@rigel.lan>
 <YRKv6cpxaUfa6Abv@infradead.org>
Date:   Tue, 10 Aug 2021 23:00:56 +0200
Message-ID: <87pmulovzr.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Aug 10 2021 at 17:57, Christoph Hellwig wrote:

> On Fri, Aug 06, 2021 at 07:44:41AM +0100, Nicky Chorley wrote:
>> On Thu, 5 Aug 2021, Greg KH wrote:
>> 
>> > But we do not use pip to do kernel builds, so what is this going to help
>> > with?
>> 
>> It's just about making people's lives easier for running the spdxcheck.py
>> script - not everyone will have the third-party libraries installed, so
>> listing them means they can be installed easily. For example:
>
> I think the most useful thing here would be to find a way to make
> spdxcheck just work without the non-standard python module.  As far
> as I can tell it uses the module only to do the recursive travesal
> of the current tree anyway, which seems rather pointless to start with.

Yes, it's just the tree traversal and it turned out to be convenient to
just use the git python bindings to avoid scanning random crap in the
source tree. It should be simple enough to make it use the output of a
subprocess running 'git ls-files'.

But python-git is packaged in most distros, so when I wrote this script
I really could not be bothered to deal with parsing subprocess output
and aside of that resolving:

  ModuleNotFoundError: No module named 'git'

is not rocket science by any means.

Thanks,

        tglx
