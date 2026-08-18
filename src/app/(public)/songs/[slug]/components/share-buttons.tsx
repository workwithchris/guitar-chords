import {
  EmailIcon, EmailShareButton, FacebookIcon, FacebookShareButton,
  LinkedinIcon, LinkedinShareButton, RedditIcon, RedditShareButton,
  TelegramIcon, TelegramShareButton, TwitterIcon, TwitterShareButton,
  WhatsappIcon, WhatsappShareButton,
} from 'react-share'

const iconStyle = { borderRadius: '50%', height: 36, width: 36 }

export default function ShareButtons({ url, title }: { url: string; title: string }) {
  return (
    <div className="flex flex-wrap gap-3 p-4 rounded-xl border border-border bg-card share-buttons no-print">
      <FacebookShareButton url={url} title={title}><FacebookIcon className="hover:scale-110 transition-transform" style={iconStyle} /></FacebookShareButton>
      <TwitterShareButton url={url} title={title}><TwitterIcon className="hover:scale-110 transition-transform" style={iconStyle} /></TwitterShareButton>
      <WhatsappShareButton url={url} title={title}><WhatsappIcon className="hover:scale-110 transition-transform" style={iconStyle} /></WhatsappShareButton>
      <TelegramShareButton url={url} title={title}><TelegramIcon className="hover:scale-110 transition-transform" style={iconStyle} /></TelegramShareButton>
      <LinkedinShareButton url={url} title={title}><LinkedinIcon className="hover:scale-110 transition-transform" style={iconStyle} /></LinkedinShareButton>
      <RedditShareButton url={url} title={title}><RedditIcon className="hover:scale-110 transition-transform" style={iconStyle} /></RedditShareButton>
      <EmailShareButton url={url} subject={title}><EmailIcon className="hover:scale-110 transition-transform" style={iconStyle} /></EmailShareButton>
    </div>
  )
}
