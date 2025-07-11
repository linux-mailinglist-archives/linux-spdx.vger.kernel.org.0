Return-Path: <linux-spdx+bounces-60-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43948B02610
	for <lists+linux-spdx@lfdr.de>; Fri, 11 Jul 2025 23:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F33C454856D
	for <lists+linux-spdx@lfdr.de>; Fri, 11 Jul 2025 21:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A1E91C3C11;
	Fri, 11 Jul 2025 21:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="R//GFDgP"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE0B1C245C
	for <linux-spdx@vger.kernel.org>; Fri, 11 Jul 2025 21:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752267755; cv=none; b=mKVmq3ZhA10FmDWK0fWmhc6ygsRKn0Rn90HMIi5TlRf0uRRQGP+JRqJNZxNZNZ8FMeyo8jkMtDUjoiCFSXXuE6jbiFFVqgoipQxSqaixeBCDLSPXW/Sru1Mu1UjdLdFnvACPtkvPirjzWARZP4kODWEu0KDWLKm6GmLi4dDEEfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752267755; c=relaxed/simple;
	bh=1oYrVlJ3uE3Qwi3bcjrfiVQw+/6MI5IE+S4RFoz2UP4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y09e4MWvhh0g9gqBvzN/JnlubcdWZjJhd8nI4s1XNB19pinXGmQA37hA5h756UDQSKaKqtSDXpCKn2baMJkgDYu96lQLCHjm/vusR6c2LnpuO7SWZ49Zb8wSy60UCXQxkG0urNECLl091qAU5PN/vrWAqpIGHwLXWDyNKMF0vP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=R//GFDgP; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752267752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B8wqL7cjLc9wrp/M0s58Eu3w42p4LxpTNqj9aXGf6TE=;
	b=R//GFDgPp6tF+ByURKY+pf6yQFBqyrJzDP5Chur3zrpQ8dKUZHunyerF9Vm4qXjJrnuXKv
	3pQPVPjFVBWWk2w2R1hJCe1zF8UWyeW2dzI+d5dAPvnBLdEMIf3AJJo6nrrWchMRxnJJ0K
	PbGnmEPUGWystkAuNc13vfZVl0zzjKQ=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-3q8RJ0V2NGiAZok89aavgQ-1; Fri, 11 Jul 2025 17:02:31 -0400
X-MC-Unique: 3q8RJ0V2NGiAZok89aavgQ-1
X-Mimecast-MFC-AGG-ID: 3q8RJ0V2NGiAZok89aavgQ_1752267750
Received: by mail-ed1-f70.google.com with SMTP id 4fb4d7f45d1cf-607c91a207dso2733980a12.2
        for <linux-spdx@vger.kernel.org>; Fri, 11 Jul 2025 14:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752267750; x=1752872550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8wqL7cjLc9wrp/M0s58Eu3w42p4LxpTNqj9aXGf6TE=;
        b=o7+GeEe4jwWCBjQ1DfZq4HEVWPjjViwqmfsGCEtPTB0fX1u379p8DYjbMbDzLa0DJ7
         +C4fnip/4MgFE/JWSewSAU4v5AE8OHhVkIpkJADDx9O3QMbriampMxkELsGmVq2CRdSL
         CWi0q8jOcWV4dSSBW2QT+e2XZbSz459/TxY/krfBG614j6c8n3fURFoCqQKdviBzxczk
         brLrLGPvhNEg0XsPt9KA+CiyyqsedJHE5hIiYg9G2uxF62j615eGjMYP7MhntY/RfwWW
         MWBAOnVsFouSIaRTiDMNrIAI2mkYLs70N54XmSI9+CRBxFcORRFqGNtelB5wK9osN+O0
         0Tjw==
X-Forwarded-Encrypted: i=1; AJvYcCWXbwa822EHksEcfvmn9B70FiIO8TeRd48NB0pQfgthE53A2Q8LRLlMC4MrXZE0z91t/3L0jx1lsEmg@vger.kernel.org
X-Gm-Message-State: AOJu0YyRC+2rx6sUEMKC2uUal42Uz1O6VoAlJxi4s6Vj36k0jV5X1h+9
	lkrBJOIDJF4c7yUCPLQymGeyxYKS2UlHE4UhZuapviqjuVLlmUHYAwmUZ7qwu3ra2fwAgTlpH/y
	nvXNoV7BZvd79l620TxfpqUXQUCPBisQOEzIZW4Vjoy6VhNysouBp7cRTIczCTmffpKRXY6A9jT
	FXx+P5N3q9pmtZQANvRiMS/5Djbqzn1xg58R7DFA==
X-Gm-Gg: ASbGncvopOOg7Xb6QHi1Gvp+W9xOjAyzD2uft3VzQcGqDSM6j2VS1fvBNWNmZG8WwHq
	VJcW0IBCBu3V4j5o5Ojv8+LByP0m8zmNbF08wd+v+Vk7VBY8uH8sgVRmD6cie1TGkQFOigdowuh
	CGdKqgGcxQLbuVMgXwmdS94g==
X-Received: by 2002:a05:6402:20c9:b0:607:f257:ad1e with SMTP id 4fb4d7f45d1cf-611e84ad4e9mr2950276a12.22.1752267750350;
        Fri, 11 Jul 2025 14:02:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH83FFTu2jsAw1nlpLlMtsjXIeiEGRxdDqdXdoTELtLHJ1dyi7MtcZP+zW6IgfrCrgu9h4FoDwTNGHCP3jNFNM=
X-Received: by 2002:a05:6402:20c9:b0:607:f257:ad1e with SMTP id
 4fb4d7f45d1cf-611e84ad4e9mr2950253a12.22.1752267749955; Fri, 11 Jul 2025
 14:02:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250711053509.194751-1-thuth@redhat.com> <2025071125-talon-clammy-4971@gregkh>
 <9f7242e8-1082-4a5d-bb6e-a80106d1b1f9@redhat.com> <2025071152-name-spoon-88e8@gregkh>
 <aHC-Ke2oLri_m7p6@infradead.org> <2025071119-important-convene-ab85@gregkh>
In-Reply-To: <2025071119-important-convene-ab85@gregkh>
From: Richard Fontana <rfontana@redhat.com>
Date: Fri, 11 Jul 2025 17:02:18 -0400
X-Gm-Features: Ac12FXx9o38iv3wKGucEiB-BlcHSskPmrdROt4FLG3oX4rus7oZ3AtWQf9LYTm8
Message-ID: <CAC1cPGx0Chmz3s+rd5AJAPNCuoyZX-AGC=hfp9JPAG_-H_J6vw@mail.gmail.com>
Subject: Re: [PATCH v2] powerpc: Replace the obsolete address of the FSF
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Christoph Hellwig <hch@infradead.org>, Thomas Huth <thuth@redhat.com>, 
	Madhavan Srinivasan <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Thomas Gleixner <tglx@linutronix.de>, Nicholas Piggin <npiggin@gmail.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, kvm@vger.kernel.org, linux-spdx@vger.kernel.org, 
	J Lovejoy <opensource@jilayne.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bpSmOjBbWQWQYFlVOt7Egm4peFZPr8ebU0RQM4-h5B0_1752267750
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2025 at 3:38=E2=80=AFAM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Jul 11, 2025 at 12:32:57AM -0700, Christoph Hellwig wrote:
> > On Fri, Jul 11, 2025 at 09:30:31AM +0200, Greg Kroah-Hartman wrote:
> > > That's a crazy exception, and one that should probably be talked abou=
t
> > > with the FSF to determine exactly what the SPDX lines should be.
> >
> > It is called the libgcc exception and has been around forever for the
> > files in libgcc.a that a lot of these low-level kernel helpers were
> > copied from as the kernel doesn't link libgcc.
>
> Ah, so it would be something like this exception:
>         https://spdx.org/licenses/GCC-exception-2.0.html
> but the wording doesn't seem to match.
>
> I'll let the license lawyers figure this out, thanks for the hint!

This one

 * In addition to the permissions in the GNU General Public License, the
 * Free Software Foundation gives you unlimited permission to link the
 * compiled version of this file with other programs, and to distribute
 * those programs without any restriction coming from the use of this
 * file.  (The General Public License restrictions do apply in other
 * respects; for example, they cover modification of the file, and
 * distribution when not linked into another program.)

is `GCC-exception-2.0`

while this one:

 *    As a special exception, if you link this library with files
 *    compiled with GCC to produce an executable, this does not cause
 *    the resulting executable to be covered by the GNU General Public Lice=
nse.
 *    This exception does not however invalidate any other reasons why
 *    the executable file might be covered by the GNU General Public Licens=
e.

does not seem to be in the SPDX exception list. It is very similar to
`GNU-compiler-exception` except it specifically mentions GCC instead
of saying "a GNU compiler".

Alerting Jilayne by cc.

Also, and a question I remember wondering about a while ago, I don't
know how SPDX treats situations where, as apparently in this case,
more than one exception applies to a license grant. I don't think SPDX
syntax allows `GPL-2.0-or-later WITH GCC-exception-2.0 WITH
{some-additional-SPDX-exception}` or
`GPL-2.0-or-later WITH GCC-exception-2.0 AND {some
additional-SPDX-exception}`, i.e. I think SPDX assumes that only one
exception will ever apply in a given case, although the `AdditionRef-`
construct provides one way of dealing with this.

Richard


