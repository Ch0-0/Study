# API 호출하여 알림톡 발송
*Last Update 2023.07.19

##목차

- [API컨트롤러](#API-컨트롤러)

## API 컨트롤러
```
import com.study.common.vo.ExceptionMsg;
import com.study.common.vo.CommandMap;
import com.study.common.vo.ResponseObj;

import com.study.smsAuth.service.SmsSendService;
import com.study.common.link.service.linkService;



@Controller
@CrossOrigin(origins = {"URL","URL"...}) //접근허용 URL
@RequestMapping(value = "/tax/ai/")
public class SmsSendController {
  private static final String ENC_KEY = ""; //암호화 키
  private static final String PHONE_NO_KEY = ""; //암호화 키
  private static final String DATE_KEY = ""; //암호화 키

  /******************************************************************
  private final Logger LOG = LoggerFactory.getLogger(this.getClass().getName());

  @Autiwired
  private SmsSendService smsSendService;

  /******************************************************************

  /**
  * sms발송
  *
  * @param commandMap
  * @param request
  * @param model
  * @return
  * @throws Exception
  */

  @RequestMapping(value = "smsSend.do", method = RequestMethod.POST)
  public ModelAndView smsSend(CommandMap commandMap, HttpServletRequest request) throws Exception {

    String uri =request.getServletPath();
    ModelAndView mv = new ModelAndView("jsonView");
    ResponseObj resobj = new ResponseOjb();

    try {
            LOG.info(">> uri {}, param {}", uri, commanMap.getMap());

            String phoneNum  = StringUtil.nullToStr((String) commandmap.get("PHONE_NUM"), "");
            String authNum   = StringUtil.nullToStr((String) commandmap.get("AUTH_NUM"), "");

            if(!isValidCheckSmsAuthParam(phoneNum, authNum)) {
              resobj.setErr(ExceptionMsg.ERR_AUTH_KEY);
              mv.addObject("resobj", resobj.getResmap());
              return mv;
            }

            String token = linkService.getHeaderToken(request);

            if (StringUtil.isEmpty(token) || !isValidToken(token, phoneNum)) {
              resobj.setErr(ExceptionMsg.ERR_AUTH_KEY);
              mv.addObject("resobj", resobj.getResmap());
              return mv;
            }

            smsSendService.smsSendAuthNum(phoneNo, authNum);

            resobj.setRslt(AppConstant.SUCC);

    } catch (Exception e) {
      LOG.errer("ERROR: " + e.getMessage(), e);
      resobj.setErr(ExceptionMsg.ERR_SERVER_ERROR);
    }
    mv.addObject("resobj", resobj.getResmap());
    return mv;
  }




}
```
