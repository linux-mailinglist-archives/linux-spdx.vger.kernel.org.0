Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E35F053EEF5
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbiFFT62 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiFFT61 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:27 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89E9525C5F
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:25 -0700 (PDT)
Message-ID: <20220606195511.940411730@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545504;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=aKvILz9Vkrz/MPdwJK66ShHYa3bR8Jxdi5oAmPEhuus=;
        b=J5PWSm71d3094BEkXLrNn0TdgHkWb3nujVhx1ee1ap7wLnqljuwpXh1yCXV+8BnI3l7FI/
        liklIGOmPXR63OE61zgm8dbrDPyCzzQhLY8j7QRhJAx5zEewLR9KfUYoV9rmW2XSHZcnNd
        MtPTOwhYYkL55Gw+dtxINPrQ/0A7ob6UqTXb/cGkfjlyhYCder+3vVSlIEtlH+kMqpL/co
        Nq8rfCalxkxfERnPwBVpqm85fZMpa2n94NkgX4b2m9v8X1Td8CBcUjgPcWhjQ/zM5cQoHt
        oY80zA6EWCWcQWdZ86aOBmWVY+qZY+hMw6XUWnT1cw0wpSn7z63q3hAMI1nqPw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545504;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=aKvILz9Vkrz/MPdwJK66ShHYa3bR8Jxdi5oAmPEhuus=;
        b=uUQpXhv0SVoOoV2NKwa4/az5oPea1MjPW5vapYKALVH0gIJ8744pPfFOkbWNhjpZO+iNwy
        S7R89qO9YdwWyOCg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 01/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_8.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:23 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Rm9sa3MhClJlZmVyZW5jZXM6IDwyMDIyMDYwNjE5NDA0Mi40Mjg1Njg5MzJAbGludXRyb25peC5k
ZT4KTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVU
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIHRoaXMgcHJvZ3JhbSBp
cyBmcmVlIHNvZnR3YXJlIHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkgaXQK
ICAgIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgZ251IGdlbmVyYWwgcHVibGljIGxpY2Vuc2UgdmVy
c2lvbiAyIGFzCiAgICBwdWJsaXNoZWQgYnkgdGhlIGZyZWUgc29mdHdhcmUgZm91bmRhdGlvbgoK
ZXh0cmFjdGVkIGJ5IHRoZSBzY2FuY29kZSBsaWNlbnNlIHNjYW5uZXIgdGhlIFNQRFggbGljZW5z
ZSBpZGVudGlmaWVyCgogICAgR1BMLTIuMC1vbmx5CgpoYXMgYmVlbiBjaG9zZW4gdG8gcmVwbGFj
ZSB0aGUgYm9pbGVycGxhdGUvcmVmZXJlbmNlLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEdsZWl4
bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3Zm
aW8tbWVkaWF0ZWQtZGV2aWNlLnJzdCB8ICAgIDQgKy0tLQogYXJjaC9hcm0vYm9vdC9ib290cC9i
b290cC5sZHMgICAgICAgICAgICAgICAgICAgICB8ICAgIDUgKy0tLS0KIGluY2x1ZGUvbGludXgv
aW5wdXQvZWxhbi1pMmMtaWRzLmggICAgICAgICAgICAgICAgfCAgICA1ICstLS0tCiAzIGZpbGVz
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RyaXZlci1hcGkvdmZpby1tZWRpYXRlZC1kZXZpY2UucnN0CisrKyBiL0RvY3VtZW50
YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QKQEAgLTEsMyArMSw0IEBA
CisuLiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAuLiBpbmNsdWRlOjog
PGlzb251bS50eHQ+CiAKID09PT09PT09PT09PT09PT09PT09PQpAQCAtOCw5ICs5LDYgQEAgVkZJ
TyBNZWRpYXRlZCBkZXZpY2VzCiA6QXV0aG9yOiBOZW8gSmlhIDxjamlhQG52aWRpYS5jb20+CiA6
QXV0aG9yOiBLaXJ0aSBXYW5raGVkZSA8a3dhbmtoZWRlQG52aWRpYS5jb20+CiAKLVRoaXMgcHJv
Z3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IgbW9k
aWZ5Ci1pdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNl
IHZlcnNpb24gMiBhcwotcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24u
CiAKIAogVmlydHVhbCBGdW5jdGlvbiBJL08gKFZGSU8pIE1lZGlhdGVkIGRldmljZXNbMV0KLS0t
IGEvYXJjaC9hcm0vYm9vdC9ib290cC9ib290cC5sZHMKKysrIGIvYXJjaC9hcm0vYm9vdC9ib290
cC9ib290cC5sZHMKQEAgLTEsMTEgKzEsOCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seSAqLwogLyoKICAqICBsaW51eC9hcmNoL2FybS9ib290L2Jvb3RwL2Jvb3Rw
LmxkcwogICoKICAqICBDb3B5cmlnaHQgKEMpIDIwMDAtMjAwMiBSdXNzZWxsIEtpbmcKLSAqCi0g
KiBUaGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQg
YW5kL29yIG1vZGlmeQotICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQ
dWJsaWMgTGljZW5zZSB2ZXJzaW9uIDIgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0
d2FyZSBGb3VuZGF0aW9uLgogICovCiBPVVRQVVRfQVJDSChhcm0pCiBFTlRSWShfc3RhcnQpCi0t
LSBhL2luY2x1ZGUvbGludXgvaW5wdXQvZWxhbi1pMmMtaWRzLmgKKysrIGIvaW5jbHVkZS9saW51
eC9pbnB1dC9lbGFuLWkyYy1pZHMuaApAQCAtMSwzICsxLDQgQEAKKy8qIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KIC8qCiAgKiBFbGFuIEkyQy9TTUJ1cyBUb3VjaHBh
ZCBkZXZpY2Ugd2hpdGVsaXN0CiAgKgpAQCAtMTEsMTAgKzEyLDYgQEAKICAqIGNvcHlyaWdodCAo
YykgMjAxMS0yMDEyIEN5cHJlc3MgU2VtaWNvbmR1Y3RvciwgSW5jLgogICogY29weXJpZ2h0IChj
KSAyMDExLTIwMTIgR29vZ2xlLCBJbmMuCiAgKgotICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29m
dHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkgaXQKLSAqIHVuZGVy
IHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdmVyc2lvbiAyIGFz
IHB1Ymxpc2hlZAotICogYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbi4KLSAqCiAgKiBU
cmFkZW1hcmtzIGFyZSB0aGUgcHJvcGVydHkgb2YgdGhlaXIgcmVzcGVjdGl2ZSBvd25lcnMuCiAg
Ki8KIAoK
