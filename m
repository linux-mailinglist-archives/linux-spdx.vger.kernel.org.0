Return-Path: <linux-spdx+bounces-79-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C121B13DCB
	for <lists+linux-spdx@lfdr.de>; Mon, 28 Jul 2025 17:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF1793BE262
	for <lists+linux-spdx@lfdr.de>; Mon, 28 Jul 2025 15:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BBA1A254E;
	Mon, 28 Jul 2025 15:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DXWGfgwe"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85ECF7E9
	for <linux-spdx@vger.kernel.org>; Mon, 28 Jul 2025 15:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753714888; cv=none; b=MIk5H1yvatOV8p7rRHyJTQAUq+DSPEhX8O7XmlGL4Qi6+PRkYFfIw5/5YLjFnXtBT4p+coF6fkJwDi5CkBnYlh0hrYEddYsuKjYr8CN+c/+0nrT4hyzsliC9jsvNw6aPC3NT8dqnE11OEnmtlkI5OFTceQ7XmtDdUUmxtsJu980=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753714888; c=relaxed/simple;
	bh=7q+mdCrRUK3a2L+JV4AdQKnbAn1qhQ+pM8C1q91YFSA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rZtzlrWCu2ZyxxeG7/TEw0XyiPQ9q2pL735/2jH33yMfJ+pxlHxHsR7jAGl2DfZhzlhgoUEfpJISXgTd6Bk+l6LBanY/BjlCf4E3uiODRURr+Z2SEBmdjfbnTxoOpqOBHPuF7MFETPTiLI5AZKfc8KH0pUAvizZt//cdk/Ru06s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DXWGfgwe; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753714885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=hoGkAxXm1foHj6xWm9XsuRD1wB+xNHCnssMNSYurlvY=;
	b=DXWGfgwe3QBCC0SO2vE+A//xpeOtQtEm+Lu/x8f12FPKJeTE/9i1hAnszsLT+tV7kPmMAQ
	IDJ69maqEF2Pj6slWtEeDv/l2gyNEl3W6i7+iQj29vFTNdaGAOPHKSVDfKJwTDU2HobrnN
	LU0I34y5DFvDrgucKTske46aSM+l8cE=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-88-0DZ4_fDePMK9CT7iN3D0iQ-1; Mon, 28 Jul 2025 11:01:23 -0400
X-MC-Unique: 0DZ4_fDePMK9CT7iN3D0iQ-1
X-Mimecast-MFC-AGG-ID: 0DZ4_fDePMK9CT7iN3D0iQ_1753714883
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3b785d52c19so701747f8f.1
        for <linux-spdx@vger.kernel.org>; Mon, 28 Jul 2025 08:01:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753714882; x=1754319682;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hoGkAxXm1foHj6xWm9XsuRD1wB+xNHCnssMNSYurlvY=;
        b=UywOpMADQrYKBG6a/GXqIeTVQOsRR1mJAnjm/5l0JN2obqzZ0TuRUiFWjKAI9ij8hq
         Mu3yL+OKiFB16IbgQlpardNK5QToGjjZg6kgI37E6xujHEXSGl0VfYj9oa9X01vMRK8/
         zITMg3b5DLJnHtACxRdJ7LLOCJkULcXpOnzCsPves5OnqOlY6sP9UO/zsLnhnAO3sjMj
         ru1RsoTkeJlmmUb9CILZ0CqVm5GoSAlFGU66tiCegQWk+z6g4hqzHMhv3cO8VjrBBiiT
         NzNPaTJamIV+oWPtx6M/0meOytCAYkxlUhm4pGAncApQ+rMAcoTulfvhd8Rz9TGt+xjP
         Xg3g==
X-Forwarded-Encrypted: i=1; AJvYcCUonge6rzSpN36U4aCUAaPZbb46CGb5h7Thn7Vxz28W6h0FCe2KZh6LM9ZxpEtriu1XebpHkYBQkfMu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1gieuqAk6mPsoZVspsVKu5qqYDVGqc/0kf7+PhqjsLXWByhLC
	b9jaI1/azTooh/fwWK9eu4cXBuuqUY30KiMhAA7Egvnc8v5cqqsGX3F6pOBG3GsT/HyACNvcDyk
	2yB3FrVYxbcerNwgO8JZ1gW3WiEraIaWdkdhO/vmmfk2vzhQgTim82M9qcXwaU5I=
X-Gm-Gg: ASbGncufmk27YpT/MkRwFhV1/WgqAAIzQTrq9twTnJLtQbh70VYZbDQMpDHuji9SiZg
	srcHezLeCpg8aYaEPMVJ18HQpL8Q4S0dyUQBZECxwhqCCEP6rv1fxAp/FQbCXHWF9zLBhQpb67t
	c1F+6uLrZMUqHJzL/+XUDb0+9J5b1J0U+kOyA7BBGKyRx4z8Lo1A7gyVdNORlY+7u7t30e/kDx5
	yPWrNQdVmJsO3h65T0vt9L8LbLeZvFAQb8QZ3olfmx/FA9kEoWDxJ8e20buvjPpYHoqCOpUCo53
	2tN27OISa2AVzI+oyuEZZQ97vU3uGisVSUUpWpZNVg/ZrKpaBWRXUmyfcGpWHbgHTEjDsMItgz5
	OnGqP
X-Received: by 2002:a05:6000:2013:b0:3a4:eef9:818a with SMTP id ffacd0b85a97d-3b776645908mr9420584f8f.27.1753714882274;
        Mon, 28 Jul 2025 08:01:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFd7yVm4QGCNzRqYrPivqsW5+pncr7pQjlQLfbdFwZvxJAkgI4Xd9pNJtfXTFIlg0QxgQUxmg==
X-Received: by 2002:a05:6000:2013:b0:3a4:eef9:818a with SMTP id ffacd0b85a97d-3b776645908mr9420488f8f.27.1753714881418;
        Mon, 28 Jul 2025 08:01:21 -0700 (PDT)
Received: from [192.168.0.6] (ltea-047-064-113-169.pools.arcor-ip.net. [47.64.113.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b7816e3641sm7311451f8f.73.2025.07.28.08.01.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 08:01:20 -0700 (PDT)
Message-ID: <f0845cc1-7fd9-48b8-8925-af12b6166edc@redhat.com>
Date: Mon, 28 Jul 2025 17:01:17 +0200
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arch/x86/kvm/ioapic: Remove license boilerplate with bad
 FSF address
To: "Marc-Etienne Vargenau (Nokia)" <marc-etienne.vargenau@nokia.com>,
 Sean Christopherson <seanjc@google.com>, Paolo Bonzini
 <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, "x86@kernel.org"
 <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>
References: <20250728141540.296816-1-thuth@redhat.com>
 <PR3PR07MB81837F4778329A2270CC9318AC5AA@PR3PR07MB8183.eurprd07.prod.outlook.com>
From: Thomas Huth <thuth@redhat.com>
Autocrypt: addr=thuth@redhat.com; keydata=
 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
In-Reply-To: <PR3PR07MB81837F4778329A2270CC9318AC5AA@PR3PR07MB8183.eurprd07.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vH3UJeBVnQHwco2Wrb4xUvvhFxyYVePN1QB4cU9VWiQ_1753714883
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/07/2025 16.59, Marc-Etienne Vargenau (Nokia) wrote:
> Hello,
> 
> That should be:
> 
> // SPDX-License-Identifier: LGPL-2.1-or-later
> 
> not
> 
> // SPDX-License-Identifier: LGPL-2.1+
> 
> « LGPL-2.1+ » is deprecated

Ah, stupid me, I copied it from the wrong file! Thanks for the hint, I'll 
send a v2!

  Thomas


