Return-Path: <linux-spdx+bounces-89-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E90F5B18118
	for <lists+linux-spdx@lfdr.de>; Fri,  1 Aug 2025 13:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E56C1C8299A
	for <lists+linux-spdx@lfdr.de>; Fri,  1 Aug 2025 11:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E095F24DCF9;
	Fri,  1 Aug 2025 11:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fUrwVgqc"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E57246763
	for <linux-spdx@vger.kernel.org>; Fri,  1 Aug 2025 11:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754047615; cv=none; b=CVVZw9wEMl52BrG01Fm8teX8SvQlOjPu4PCkQDyBXZyNz0Aqd+LBplLzYohgemVNBiPXja1+O3wNoabKKy/I4mlVhQ2KsVtm/jZdIwFymPIYaUilioAO7HgX646DIykpOmxZaGPhGVJhxIZRD3+AciCLEmNz1aXYrjyfVUwP31s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754047615; c=relaxed/simple;
	bh=4xyQvpgC+I9+1Qp0FJ9nuQV679QR/nFwxzq863jh5tU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D0ylhF7E8o5E38BAMcAKUMHgxfb4RsNbyE80gARgjLaBFOd6B7pP+V+TNHpt/NN04d+Ek0qv0FOr/B6G1GNu5oL38qq7eXZrQFSqRioki8DArsGxJyuf5QfwrQlHGBnThs9KptBX5jnO+FqjRtFLGVXzM2+6qW4VZ+PXm7iAqL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fUrwVgqc; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754047613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pHOprKZ6PR/GAM6prd1YkB5yUEoiTGeLa6WoyKyn8vQ=;
	b=fUrwVgqc6Onzuua63/Fjkmb3tpMRLkdPrvSdeQz8QVtCeoLSYVXJWtec3JvE+IfU+psxiE
	vH7OapCBXda+JPrauQsGh0lOR6Y9CrW4U9Xu20zU5yFApyn21GZDsFui+zsvpPdtRNRkSv
	8bZCu2wmb6SzxrpJ334c7n+KWFXizPc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-473-jd8Tgnp3Pn-OrynABdPKPw-1; Fri, 01 Aug 2025 07:26:49 -0400
X-MC-Unique: jd8Tgnp3Pn-OrynABdPKPw-1
X-Mimecast-MFC-AGG-ID: jd8Tgnp3Pn-OrynABdPKPw_1754047609
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3b78329f007so792726f8f.1
        for <linux-spdx@vger.kernel.org>; Fri, 01 Aug 2025 04:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754047609; x=1754652409;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pHOprKZ6PR/GAM6prd1YkB5yUEoiTGeLa6WoyKyn8vQ=;
        b=iPGfywm7J72GFQMkIomcqnS8JGR9wbrE/oCvY1eE/Uyn3SHvqtWJwebjbWEVwFPWEE
         eZ5jcJbCfM5W0WmNDpGU7yeje0flUXoSmLnaoTQ4/Q85PQ2+veBox3S/zo4dT6oZYBjY
         ekTDA+a4JvC1DeHV4Da+nFEf1JbjMg7BbmZqrOnAiGPpp5wKoY0Ecccn9aznpiqCmEcu
         fk3jdAT1h96VjoqXuwSfiwSb5dR+wjmu5HKJdTU2AZVmtgtu2VmyVY9SwaZ11YYbKxXf
         yVCK+KUsqWhS4XS1S+wyJwcNvvxA/oFErGO30qOI1gUuwFJdoRWIOOf7w3fPTPwHnWSj
         UX/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWnJwhmfQns386bNndKlc8BLk7NTheXGkdDtL4J8R9sIxSKtqMwF6xMQG82iMEK665a1Ym7o7C+auh9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjo3+yFhlHYaNiGTE4E44B8qk6YhUgPEA9jwVXM3jeeji1I9F6
	wJs/KdQ2UQedUeNSSr8KuyLqFG6gx/YIY9iI+rwDq3vZROcM52OerhlP+fmSRBdlVDz77XY0lKx
	QZnk3qy90zjIv9lCHHIjYWY8IaKTGj/IM9xmvqLIUEKXI8HPOkEqDynNSQt+0ITg=
X-Gm-Gg: ASbGnct2EoGmMx406F0Mg4zFSdK9y7r2ZgvnjsvK4HcCtsWwcQvUDEqmDjWQ7tB+A1A
	ZE1HP7IaNT1QXWGBEq+ayoqZ4iO+RVIXDGVBCPaHvX6wfVo1G0bdwC0KoT0m1y4ddhssCUmuEF4
	t8myYo5hjQPO3N385aJFzj2J0OmDl2Y1Hw8NoByPrB5gm7QsYXNwhoOY1UZ6ZdZn1U+m8/mYoNY
	LM0vioUZTWQEbtuGn6UT1wpZE4ppAZIp0/pPI4uUNHX6WMHBErq+mDcaJkTgFbXMAHQMl3PbYz2
	H2C49OU7xObP2wc823I/LbO7iP9uTRx/B4ALlk2cDnvPfwwuap4rVaaDppRkc1Td+KlT28WBsQC
	+0FY=
X-Received: by 2002:a5d:5d07:0:b0:3b8:d7fe:315d with SMTP id ffacd0b85a97d-3b8d7fe344amr350943f8f.34.1754047608605;
        Fri, 01 Aug 2025 04:26:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRBJH9g8fRYAfsc45Q+0l1Ggbop+PWThVcIfuhi55RsC2803vYJ2GW5q7gTx71Z8MzzyOq8w==
X-Received: by 2002:a5d:5d07:0:b0:3b8:d7fe:315d with SMTP id ffacd0b85a97d-3b8d7fe344amr350926f8f.34.1754047608152;
        Fri, 01 Aug 2025 04:26:48 -0700 (PDT)
Received: from [192.168.0.6] (ltea-047-064-114-086.pools.arcor-ip.net. [47.64.114.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4a2848sm5473887f8f.71.2025.08.01.04.26.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 04:26:45 -0700 (PDT)
Message-ID: <bfe5477e-7340-468a-af3f-192adc451c2d@redhat.com>
Date: Fri, 1 Aug 2025 13:26:43 +0200
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arch/x86/kvm/ioapic: Remove license boilerplate with
 bad FSF address
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
Cc: x86@kernel.org, kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spdx@vger.kernel.org
References: <20250728152843.310260-1-thuth@redhat.com>
 <2025072819-bobcat-ragged-81a7@gregkh> <2025072818-revoke-eggnog-459a@gregkh>
From: Thomas Huth <thuth@redhat.com>
Autocrypt: addr=thuth@redhat.com; keydata=
 xsFNBFH7eUwBEACzyOXKU+5Pcs6wNpKzrlJwzRl3VGZt95VCdb+FgoU9g11m7FWcOafrVRwU
 yYkTm9+7zBUc0sW5AuPGR/dp3pSLX/yFWsA/UB4nJsHqgDvDU7BImSeiTrnpMOTXb7Arw2a2
 4CflIyFqjCpfDM4MuTmzTjXq4Uov1giGE9X6viNo1pxyEpd7PanlKNnf4PqEQp06X4IgUacW
 tSGj6Gcns1bCuHV8OPWLkf4hkRnu8hdL6i60Yxz4E6TqlrpxsfYwLXgEeswPHOA6Mn4Cso9O
 0lewVYfFfsmokfAVMKWzOl1Sr0KGI5T9CpmRfAiSHpthhHWnECcJFwl72NTi6kUcUzG4se81
 O6n9d/kTj7pzTmBdfwuOZ0YUSqcqs0W+l1NcASSYZQaDoD3/SLk+nqVeCBB4OnYOGhgmIHNW
 0CwMRO/GK+20alxzk//V9GmIM2ACElbfF8+Uug3pqiHkVnKqM7W9/S1NH2qmxB6zMiJUHlTH
 gnVeZX0dgH27mzstcF786uPcdEqS0KJuxh2kk5IvUSL3Qn3ZgmgdxBMyCPciD/1cb7/Ahazr
 3ThHQXSHXkH/aDXdfLsKVuwDzHLVSkdSnZdt5HHh75/NFHxwaTlydgfHmFFwodK8y/TjyiGZ
 zg2Kje38xnz8zKn9iesFBCcONXS7txENTzX0z80WKBhK+XSFJwARAQABzR5UaG9tYXMgSHV0
 aCA8dGh1dGhAcmVkaGF0LmNvbT7CwXgEEwECACIFAlVgX6oCGwMGCwkIBwMCBhUIAgkKCwQW
 AgMBAh4BAheAAAoJEC7Z13T+cC21EbIP/ii9cvT2HHGbFRl8HqGT6+7Wkb+XLMqJBMAIGiQK
 QIP3xk1HPTsLfVG0ao4hy/oYkGNOP8+ubLnZen6Yq3zAFiMhQ44lvgigDYJo3Ve59gfe99KX
 EbtB+X95ODARkq0McR6OAsPNJ7gpEUzfkQUUJTXRDQXfG/FX303Gvk+YU0spm2tsIKPl6AmV
 1CegDljzjycyfJbk418MQmMu2T82kjrkEofUO2a24ed3VGC0/Uz//XCR2ZTo+vBoBUQl41BD
 eFFtoCSrzo3yPFS+w5fkH9NT8ChdpSlbNS32NhYQhJtr9zjWyFRf0Zk+T/1P7ECn6gTEkp5k
 ofFIA4MFBc/fXbaDRtBmPB0N9pqTFApIUI4vuFPPO0JDrII9dLwZ6lO9EKiwuVlvr1wwzsgq
 zJTPBU3qHaUO4d/8G+gD7AL/6T4zi8Jo/GmjBsnYaTzbm94lf0CjXjsOX3seMhaE6WAZOQQG
 tZHAO1kAPWpaxne+wtgMKthyPLNwelLf+xzGvrIKvLX6QuLoWMnWldu22z2ICVnLQChlR9d6
 WW8QFEpo/FK7omuS8KvvopFcOOdlbFMM8Y/8vBgVMSsK6fsYUhruny/PahprPbYGiNIhKqz7
 UvgyZVl4pBFjTaz/SbimTk210vIlkDyy1WuS8Zsn0htv4+jQPgo9rqFE4mipJjy/iboDzsFN
 BFH7eUwBEAC2nzfUeeI8dv0C4qrfCPze6NkryUflEut9WwHhfXCLjtvCjnoGqFelH/PE9NF4
 4VPSCdvD1SSmFVzu6T9qWdcwMSaC+e7G/z0/AhBfqTeosAF5XvKQlAb9ZPkdDr7YN0a1XDfa
 +NgA+JZB4ROyBZFFAwNHT+HCnyzy0v9Sh3BgJJwfpXHH2l3LfncvV8rgFv0bvdr70U+On2XH
 5bApOyW1WpIG5KPJlDdzcQTyptOJ1dnEHfwnABEfzI3dNf63rlxsGouX/NFRRRNqkdClQR3K
 gCwciaXfZ7ir7fF0u1N2UuLsWA8Ei1JrNypk+MRxhbvdQC4tyZCZ8mVDk+QOK6pyK2f4rMf/
 WmqxNTtAVmNuZIwnJdjRMMSs4W4w6N/bRvpqtykSqx7VXcgqtv6eqoDZrNuhGbekQA0sAnCJ
 VPArerAZGArm63o39me/bRUQeQVSxEBmg66yshF9HkcUPGVeC4B0TPwz+HFcVhheo6hoJjLq
 knFOPLRj+0h+ZL+D0GenyqD3CyuyeTT5dGcNU9qT74bdSr20k/CklvI7S9yoQje8BeQAHtdV
 cvO8XCLrpGuw9SgOS7OP5oI26a0548M4KldAY+kqX6XVphEw3/6U1KTf7WxW5zYLTtadjISB
 X9xsRWSU+Yqs3C7oN5TIPSoj9tXMoxZkCIHWvnqGwZ7JhwARAQABwsFfBBgBAgAJBQJR+3lM
 AhsMAAoJEC7Z13T+cC21hPAQAIsBL9MdGpdEpvXs9CYrBkd6tS9mbaSWj6XBDfA1AEdQkBOn
 ZH1Qt7HJesk+qNSnLv6+jP4VwqK5AFMrKJ6IjE7jqgzGxtcZnvSjeDGPF1h2CKZQPpTw890k
 fy18AvgFHkVk2Oylyexw3aOBsXg6ukN44vIFqPoc+YSU0+0QIdYJp/XFsgWxnFIMYwDpxSHS
 5fdDxUjsk3UBHZx+IhFjs2siVZi5wnHIqM7eK9abr2cK2weInTBwXwqVWjsXZ4tq5+jQrwDK
 cvxIcwXdUTLGxc4/Z/VRH1PZSvfQxdxMGmNTGaXVNfdFZjm4fz0mz+OUi6AHC4CZpwnsliGV
 ODqwX8Y1zic9viSTbKS01ZNp175POyWViUk9qisPZB7ypfSIVSEULrL347qY/hm9ahhqmn17
 Ng255syASv3ehvX7iwWDfzXbA0/TVaqwa1YIkec+/8miicV0zMP9siRcYQkyTqSzaTFBBmqD
 oiT+z+/E59qj/EKfyce3sbC9XLjXv3mHMrq1tKX4G7IJGnS989E/fg6crv6NHae9Ckm7+lSs
 IQu4bBP2GxiRQ+NV3iV/KU3ebMRzqIC//DCOxzQNFNJAKldPe/bKZMCxEqtVoRkuJtNdp/5a
 yXFZ6TfE1hGKrDBYAm4vrnZ4CXFSBDllL59cFFOJCkn4Xboj/aVxxJxF30bn
In-Reply-To: <2025072818-revoke-eggnog-459a@gregkh>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: A8JcbpNAkeIyFvoc7hvoE336jCBbb833ZAjQmRHRY_4_1754047609
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/07/2025 17.50, Greg Kroah-Hartman wrote:
> On Mon, Jul 28, 2025 at 05:36:47PM +0200, Greg Kroah-Hartman wrote:
>> On Mon, Jul 28, 2025 at 05:28:43PM +0200, Thomas Huth wrote:
>>> From: Thomas Huth <thuth@redhat.com>
>>>
>>> The Free Software Foundation does not reside in "59 Temple Place"
>>> anymore, so we should not mention that address in the source code here.
>>> But instead of updating the address to their current location, let's
>>> rather drop the license boilerplate text here and use a proper SPDX
>>> license identifier instead. The text talks about the "GNU *Lesser*
>>> General Public License" and "any later version", so LGPL-2.1+ is the
>>> right choice here.
>>>
>>> Signed-off-by: Thomas Huth <thuth@redhat.com>
>>> ---
>>>   v2: Don't use the deprecated LGPL-2.1+ identifier
>>
>> If you look at the LICENSES/preferred/LGPL-2.1 file, it says to use:
>> 	SPDX-License-Identifier: LGPL-2.1+
>>
>> as the kernel's SPDX level is older than you might think.
>>
>> Also, doesn't the scripts/spdxcheck.pl tool object to the "or-later"
>> when you run it on the tree with this change in it?
> 
> Ugh, sorry, no, it lists both, the tool should have been fine.  I was
> reading the text of the file, not the headers at the top of it.  My
> fault.

By the way, is there a reason why LICENSES/preferred/LGPL-2.1 suggests only 
the old variant:

   For 'GNU Lesser General Public License (LGPL) version 2.1 or any later
   version' use:
     SPDX-License-Identifier: LGPL-2.1+

... while LICENSES/preferred/GPL-2.0 suggests both:

   For 'GNU General Public License (GPL) version 2 or any later version' use:
     SPDX-License-Identifier: GPL-2.0+
   or
     SPDX-License-Identifier: GPL-2.0-or-later

That looks somewhat inconsistent to me... Should the LGPL files be updated?

  Thomas


