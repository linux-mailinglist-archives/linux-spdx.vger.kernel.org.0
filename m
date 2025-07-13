Return-Path: <linux-spdx+bounces-65-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C55B03120
	for <lists+linux-spdx@lfdr.de>; Sun, 13 Jul 2025 15:27:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 601AE17D34F
	for <lists+linux-spdx@lfdr.de>; Sun, 13 Jul 2025 13:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAA7278E79;
	Sun, 13 Jul 2025 13:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YbVO8Qmj"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D21278173
	for <linux-spdx@vger.kernel.org>; Sun, 13 Jul 2025 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752413257; cv=none; b=CRR73PcjAGBfrJmTQQRtqQ0Siy+t8EgWyrUJdNNo4O/QIfez2uVgDnjFxJAO8LloWUq+RcQgchi+aKfqkTYhBzQntDsKzGCVvCWmvPbE1hnRlnBrOii2RqCosx3BxigYVmujmi+0fSIl+fioWmm2UejkFX0l7uXc0Ho4ViThF5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752413257; c=relaxed/simple;
	bh=sySgaK1WJdiCy0OaVWHnKivQ/76zBxKaSyFfGWHXB2g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eOcXmbiIT+fZahOTbnTyaoLO+Hze9EjI4MyKZxrXNEdASL+2ibU0zoKT6CLfxe6IDhr18Sjay90MHnPE0gTWdOO1VyDw8tNKiye1Ct2yQgEXM3oYTsfHAhn8XX0i3eOlVP2ns6f4lontRnF2ddIF/NLahnCqFjWC17jAK/sQNlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YbVO8Qmj; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752413253;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SbPUMGX8ZxgFnHeeV/hiD/+ZSjBKC2dEHsGM22BJ5fQ=;
	b=YbVO8Qmjd4Ir7/rjpblr2GlDCT5Smsp651PnTxumU3NkVNC2jSQJDM0usODkVcZJDeEjoi
	BLU+mHU5yIBK8EhJDutx98f5MNLQv0D7TAx64rYb7ub3yy71zJIJcUHQzhFJzTC9QwWk8y
	qXxIgzdmd+uyDaMxg1730vJyQvwT8TQ=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-115-9r3EqmWGOUCfW-gFRZg62Q-1; Sun, 13 Jul 2025 09:27:29 -0400
X-MC-Unique: 9r3EqmWGOUCfW-gFRZg62Q-1
X-Mimecast-MFC-AGG-ID: 9r3EqmWGOUCfW-gFRZg62Q_1752413249
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-60c3c9ba04dso3724573a12.0
        for <linux-spdx@vger.kernel.org>; Sun, 13 Jul 2025 06:27:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752413249; x=1753018049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SbPUMGX8ZxgFnHeeV/hiD/+ZSjBKC2dEHsGM22BJ5fQ=;
        b=uwSGMGCjXd2ttQFwTy0l+OoJk63TJRI9QqCqJdtuaTVGjv0D6UIP/oTWFQHZM+C6PZ
         aXz93HB27gUW9NvmG2M8a2VUAetf+FpVp+RLAbynwi/boADXuqn+f24WyRljw7YofhZj
         sPEMrpX9H17md1UdRBJOGinT1YuijO77cRYyR5h5JS4jKtY8DgDDu0tsLu7P+qi9gqb4
         nFLYHQYNNjICPGuJfmNdMXOwC7nY+Xxtgg9VdYJO+bRvEqKg1Uzm3zvMc8qoCdQ25wMC
         W2xcUy3bYoxT1sDIhxa8nRvkvinAEzgHZ3mwPtMgdqW4+bK5WWnhVVDofaX4ROZmREFu
         UnkA==
X-Forwarded-Encrypted: i=1; AJvYcCVoHQu4DPYyzYHwg1PaJZM1gY89k9UH3h+3O6/nNYv9eFTb8y/ui/G+osb0UHXHGCVqDep8se3toKGX@vger.kernel.org
X-Gm-Message-State: AOJu0YyDZQn+eW/LD2D+sNbJvchc7baCm7n3oTYqhq+dpK5zDji6dDw7
	dsMdOiF9pOJapf/nwy1CTJNHihv9WJKTTqb7otFD0MVgGoLNnHzTTod5aYfktreAXoO1V9TwfR4
	MnU5lXQbn1oUKwAcpORwuwpku8M79Y2eEC6rDmR1HvtJ6HqLKf0sitQouAN+Qd518TJ2UqV535H
	aiA44akoVjGqmHMpVcMPiMVpGzGKfK5rrMSEYzVg==
X-Gm-Gg: ASbGncvAIFSEJHvl0ahsvxhbWJkGe4/o6S9tN5K5o9bQ5/yRBUSpjsHTtavialIqD/R
	QNieCcftrv5SkK22Zve6HNqThfMmLzLnizocrOc6Wkm5RETShY1Z20R8zEPH2Qqdgdzny9MuP/3
	5kB2c+5sDz5LMvI202OCBlKw==
X-Received: by 2002:a05:6402:5208:b0:602:e002:9602 with SMTP id 4fb4d7f45d1cf-611ed0b48a3mr8984303a12.22.1752413248651;
        Sun, 13 Jul 2025 06:27:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIlJvPutpwR+W9sYxwViMZl/nxrPvYhgmffq4XbNJHFHpRjpXPpPQW6Oj3vKgX0RqUfCjFSDen0AZNhqrle4U=
X-Received: by 2002:a05:6402:5208:b0:602:e002:9602 with SMTP id
 4fb4d7f45d1cf-611ed0b48a3mr8984268a12.22.1752413248167; Sun, 13 Jul 2025
 06:27:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250711053509.194751-1-thuth@redhat.com> <2025071125-talon-clammy-4971@gregkh>
 <9f7242e8-1082-4a5d-bb6e-a80106d1b1f9@redhat.com> <2025071152-name-spoon-88e8@gregkh>
 <aHC-Ke2oLri_m7p6@infradead.org> <2025071119-important-convene-ab85@gregkh>
 <CAC1cPGx0Chmz3s+rd5AJAPNCuoyZX-AGC=hfp9JPAG_-H_J6vw@mail.gmail.com>
 <aHGafTZTcdlpw1gN@gate> <CAC1cPGzLK8w2e=vz3rgPwWBkqs_2estcbPJgXD-RRx4GjdcB+A@mail.gmail.com>
 <alpine.DEB.2.21.2507122332310.45111@angie.orcam.me.uk>
In-Reply-To: <alpine.DEB.2.21.2507122332310.45111@angie.orcam.me.uk>
From: Richard Fontana <rfontana@redhat.com>
Date: Sun, 13 Jul 2025 09:27:17 -0400
X-Gm-Features: Ac12FXxrW3BGCO-1ZfGLfyWGLr1WX6guqRW-xwVntrFMkfEbUP4U2wTWbTptYug
Message-ID: <CAC1cPGwa=0zSL_c+HrjQoPryus6w_LCw9Cha7uENKHqCKOQkRQ@mail.gmail.com>
Subject: Re: [PATCH v2] powerpc: Replace the obsolete address of the FSF
To: "Maciej W. Rozycki" <macro@orcam.me.uk>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@infradead.org>, 
	Thomas Huth <thuth@redhat.com>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, 
	Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	kvm@vger.kernel.org, linux-spdx@vger.kernel.org, 
	J Lovejoy <opensource@jilayne.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: R3kpvtoaPkGdgWJMCStHXG0aRll7xGILe8E4Ro-2c7o_1752413249
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 12, 2025 at 6:48=E2=80=AFPM Maciej W. Rozycki <macro@orcam.me.u=
k> wrote:
>
> On Fri, 11 Jul 2025, Richard Fontana wrote:
>
> > > > while this one:
> > > >
> > > >  *    As a special exception, if you link this library with files
> > > >  *    compiled with GCC to produce an executable, this does not cau=
se
> > > >  *    the resulting executable to be covered by the GNU General Pub=
lic License.
> > > >  *    This exception does not however invalidate any other reasons =
why
> > > >  *    the executable file might be covered by the GNU General Publi=
c License.
> > > >
> > > > does not seem to be in the SPDX exception list. It is very similar =
to
> > > > `GNU-compiler-exception` except it specifically mentions GCC instea=
d
> > > > of saying "a GNU compiler".
> > >
> > > https://spdx.org/licenses/GNU-compiler-exception.html
> > >
> > > is exactly this.
> >
> > No, because `GNU-compiler-exception` as defined here
> > https://github.com/spdx/license-list-XML/blob/main/src/exceptions/GNU-c=
ompiler-exception.xml
> > assumes use of the term "GCC" rather than "a GNU compiler".
>
>  I don't know what the legal status of the statement referred is, however
> the original exception as published[1] by FSF says:
>
> '"GCC" means a version of the GNU Compiler Collection, with or without
> modifications, governed by version 3 (or a specified later version) of th=
e
> GNU General Public License (GPL) with the option of using any subsequent
> versions published by the FSF.'

> which I think makes it clear that "GCC" is a collection of "GNU compilers=
"
> and therefore the two terms are synonymous to each other for the purpose
> of said exception (in the old days "GCC" stood for "GNU C Compiler", but
> the old meaning makes no sense anymore now that we have compilers for Ada=
,
> Fortran and many other languages included in GCC).
>
>  NB up to date versions of CRT code refer to the exception as published
> rather than pasting an old version of its text:
>
> 'Under Section 7 of GPL version 3, you are granted additional
> permissions described in the GCC Runtime Library Exception, version
> 3.1, as published by the Free Software Foundation.'
>
> References:
>
> [1] "GCC Runtime Library Exception", version 3.1,
>     <https://www.gnu.org/licenses/gcc-exception-3.1.html>

I think we're basically talking past each other. The definition of
"GCC" in the GCC runtime library exception 3.1 is irrelevant because
that file does not refer to that exception. In SPDX, license (and
exception) identifiers are precisely defined. Unless I'm missing
something there is no official SPDX identifier that corresponds to
this text:

  As a special exception, if you link this library with files
  compiled with GCC to produce an executable, this does not cause
  the resulting executable to be covered by the GNU General Public License.
  This exception does not however invalidate any other reasons why
  the executable file might be covered by the GNU General Public License.

I'm not personally a major supporter of SPDX and I'm the last person
who would want to be associated with SPDX pedanticism but it's a
standard and if the Linux kernel project is going to use it IMO it
should conform to that standard, otherwise you're basically making ad
hoc definitions of pseudo-SPDX expressions or redefinitions of
already-defined SPDX identifiers, which seems to defeat the purpose of
using SPDX expressions at all. Under that standard, there is currently
no SPDX identifier representing the above text (as far as I can tell).
The solution is either to propose a modification of
`GNU-compiler-exception` so that "GCC" is accepted as an alternative
to "a GNU compiler", or to propose a new exception to be added to
SPDX's exception list, or to use a custom-defined `AdditionRef-`
identifier.

Richard


