Return-Path: <linux-spdx+bounces-63-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E569B0279E
	for <lists+linux-spdx@lfdr.de>; Sat, 12 Jul 2025 01:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5F5A567964
	for <lists+linux-spdx@lfdr.de>; Fri, 11 Jul 2025 23:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB5278F29;
	Fri, 11 Jul 2025 23:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FsglWUwf"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D50222562
	for <linux-spdx@vger.kernel.org>; Fri, 11 Jul 2025 23:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752276360; cv=none; b=l7EmipNYg9hatpTIJAG7y9MvfP4L1Bbo3wuI+U3cbbDGmdGzgzGjD3phaXAtGPypCVfIpr5JNDrLrmXb5ENyPsokZEHRd4tmeY5MirCvGnyMyCwHgBB1KBsMk1QXlDugFyfLuHTVN9fjVXiOTwFhylU7YoD6REauZns+b4Fm4wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752276360; c=relaxed/simple;
	bh=FTjm64xHe0mUQGe0gmdkpS1UKnLUFTMDb4s/LwJnZHA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ldljLcwj7hFPNLq4L90f13YselLvWE8pop9oe0gPMhAU32MG6lIobXWDUJKu/016FhQwLVeT9rJ3AFeP01Z8b3fQTZ9yyFjESAN+0AkK1uX1grpwgDlcD/BBHVtrp+yqdZKOKzI0K1KhTa5z+Kc26XuR4yGQwqqiaYt2muaq4Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FsglWUwf; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752276357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KNnitWUyVMmZ677TXjq4fGNMFjZQx7zQ4oPAZSNDf8g=;
	b=FsglWUwfjIUydNUMn1fICrCrdhCQgcxfhBv6QlhPq/oSvtEyjFxePso0I7r7Ft1h13eArv
	EEXNu+BFXTQpWcYaBCwDrYzabSgKBDAYgQMyvj093hz1DpUh0raJy/qagULI10nKOXSlRR
	AdZAOFtsFqWkT1iMsArpp7kPnIfRw20=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-517-o_AaU3KbPOeeF_-RZJ5n7Q-1; Fri, 11 Jul 2025 19:25:56 -0400
X-MC-Unique: o_AaU3KbPOeeF_-RZJ5n7Q-1
X-Mimecast-MFC-AGG-ID: o_AaU3KbPOeeF_-RZJ5n7Q_1752276355
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-ae0d76b4f84so211781666b.3
        for <linux-spdx@vger.kernel.org>; Fri, 11 Jul 2025 16:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752276355; x=1752881155;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KNnitWUyVMmZ677TXjq4fGNMFjZQx7zQ4oPAZSNDf8g=;
        b=suPrACMFlyrkQAVOixaVgivOZa/Qux/dst4ecrwoch8hBuiOhVdXPmq2qRPsAafcaO
         hbxowljssnkSppfNQ8fRVhrW32JujqrgFUFvF0Z2DErLLIKNAwRU+IMXMUwQqe4vBhbh
         0kV3SvvQi+PGAPBunESagiV0y4mD6bD0FY/x5NMLKPBoGenPYF35474l7zt6EGd2pG24
         7O61LMniWQJT54z4JtvWD1HI8dimNjGfLJis02V1ykxn5UuQgm0nyS9AUNFoP3jbBY6o
         oCXWTLn8TuL0rnh4dVboXsds/ulxR/e1PYMKHibh29pTco9HEB12aS3Mh9IzmagSLgiQ
         nzVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOeUmo81QzZm/Xxxk7H6X9Kx8SjeHqFeOoLlTLtLkAYBaEdSNr41GbXomrdGsu+OfrwMb6FRrdPtYz@vger.kernel.org
X-Gm-Message-State: AOJu0YzcKmjUll3sfIKz3n80aOkeBCXmDCAFxcs7L6ne8A7x08RQGvvz
	oz8garVyAdUU7cHLpzAhcXrDRrtseyOp9FGlz4rNCUXd8uILafe7xPH37HAD0cW3YOZaOCrr2kA
	RUyNAEYfDL2CPEn3NKf286brGqGDhB7I19sxCCDErbVCz1LE6JsvlomG2bsOu42F+hv7w1S43x+
	eS7If19mUxlIz1GMa1fsJVQoMlMYCE145Z18TmXg==
X-Gm-Gg: ASbGncua2B41dUS6pA/zfvh3PQlEbMLJDilvkhpCC6jrzs+KS41YT6zAKcNaPbfE9yv
	TnT+FB2xT2/GiqjTYX1gDW+Qh+ZHgfCOB8kvIzuvQ6dZ/MCQ+We0NJm2NWWVr/u5arrhU1Sa+zt
	JQL2PfLDaImzqKzw/Sck/xaw==
X-Received: by 2002:a17:907:1b05:b0:ad9:f54f:70a2 with SMTP id a640c23a62f3a-ae6fbdc90f4mr531763766b.22.1752276355378;
        Fri, 11 Jul 2025 16:25:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFt+iJFpZ7hKPJdxIrpDsRa3jGHWrIka/5oKF32jekBQp3esoTQv/Phk6pp434QyDFneeZCLDCHJ81+4M08gnA=
X-Received: by 2002:a17:907:1b05:b0:ad9:f54f:70a2 with SMTP id
 a640c23a62f3a-ae6fbdc90f4mr531761466b.22.1752276355051; Fri, 11 Jul 2025
 16:25:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250711053509.194751-1-thuth@redhat.com> <2025071125-talon-clammy-4971@gregkh>
 <9f7242e8-1082-4a5d-bb6e-a80106d1b1f9@redhat.com> <2025071152-name-spoon-88e8@gregkh>
 <aHC-Ke2oLri_m7p6@infradead.org> <2025071119-important-convene-ab85@gregkh>
 <CAC1cPGx0Chmz3s+rd5AJAPNCuoyZX-AGC=hfp9JPAG_-H_J6vw@mail.gmail.com> <aHGafTZTcdlpw1gN@gate>
In-Reply-To: <aHGafTZTcdlpw1gN@gate>
From: Richard Fontana <rfontana@redhat.com>
Date: Fri, 11 Jul 2025 19:25:44 -0400
X-Gm-Features: Ac12FXznuBL3348HIkyZK48dfJrdmjVLqm_3FxI1CyeUB1LpyaZRNLgOhXRZp_o
Message-ID: <CAC1cPGzLK8w2e=vz3rgPwWBkqs_2estcbPJgXD-RRx4GjdcB+A@mail.gmail.com>
Subject: Re: [PATCH v2] powerpc: Replace the obsolete address of the FSF
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@infradead.org>, 
	Thomas Huth <thuth@redhat.com>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, 
	Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	kvm@vger.kernel.org, linux-spdx@vger.kernel.org, 
	J Lovejoy <opensource@jilayne.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KfEIurlxisdhkDKyUrSnRR0ajLCoPNRQ5zxRMiyVv8M_1752276355
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2025 at 7:14=E2=80=AFPM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Jul 11, 2025 at 05:02:18PM -0400, Richard Fontana wrote:

> > while this one:
> >
> >  *    As a special exception, if you link this library with files
> >  *    compiled with GCC to produce an executable, this does not cause
> >  *    the resulting executable to be covered by the GNU General Public =
License.
> >  *    This exception does not however invalidate any other reasons why
> >  *    the executable file might be covered by the GNU General Public Li=
cense.
> >
> > does not seem to be in the SPDX exception list. It is very similar to
> > `GNU-compiler-exception` except it specifically mentions GCC instead
> > of saying "a GNU compiler".
>
> https://spdx.org/licenses/GNU-compiler-exception.html
>
> is exactly this.

No, because `GNU-compiler-exception` as defined here
https://github.com/spdx/license-list-XML/blob/main/src/exceptions/GNU-compi=
ler-exception.xml
assumes use of the term "GCC" rather than "a GNU compiler".

Richard


