var bankImages = {
  400100046: "https://cdn.teklifimgelsin.com/newbanks/akbank.svg",
  400100111: "https://cdn.teklifimgelsin.com/newbanks/qnb.svg",
  400102111: "https://cdn.teklifimgelsin.com/newbanks/enpara.svg",
  400100032: "https://cdn.teklifimgelsin.com/newbanks/teb.svg",
  400101032: "https://cdn.teklifimgelsin.com/newbanks/cepteteb.svg",
  400100099: "https://cdn.teklifimgelsin.com/newbanks/ing.svg",
  400100064: "https://cdn.teklifimgelsin.com/newbanks/isbankasi.svg",
  400300212: "https://cdn.teklifimgelsin.com/newbanks/hayat_finans.svg",
  400100062: "https://cdn.teklifimgelsin.com/newbanks/garanti.svg",
  400101111: "https://cdn.teklifimgelsin.com/newbanks/enpara.svg",
  400100109: "https://cdn.teklifimgelsin.com/newbanks/icbc.svg",
  400100124: "https://cdn.teklifimgelsin.com/newbanks/alternatifbank.svg",
  400200015: "https://cdn.teklifimgelsin.com/newbanks/vakifbank.svg",
  400300203: "https://cdn.teklifimgelsin.com/newbanks/albaraka.svg",
  400100123: "https://cdn.teklifimgelsin.com/newbanks/hsbc.svg",
  400100103: "https://cdn.teklifimgelsin.com/newbanks/fibabanka.svg",
  400300205: "https://cdn.teklifimgelsin.com/newbanks/kuveytturk.svg",
  400300206: "https://cdn.teklifimgelsin.com/newbanks/turkiyefinans.svg",
  400100125: "https://cdn.teklifimgelsin.com/newbanks/burgan.svg",
  400100146: "https://cdn.teklifimgelsin.com/newbanks/odeabank.svg",
  400100067: "https://cdn.teklifimgelsin.com/newbanks/yapikredi.svg",
  400100096: "https://cdn.teklifimgelsin.com/newbanks/turkishbank.svg",
  400100143: "https://cdn.teklifimgelsin.com/newbanks/nkolay.svg",
  400300211: "https://cdn.teklifimgelsin.com/newbanks/emlakkatilim.svg",
};

getBankImage(int bankId) {
  String? url = bankImages[bankId];
  return url ?? "https://cdn.teklifimgelsin.com/images/tg-logo.svg";
}
