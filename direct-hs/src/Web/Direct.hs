-- | Client library for Direct.
module Web.Direct
    (
  -- * Configuration
      Config(..)
    , defaultConfig
    , URL
  -- * Login
    , login
  -- ** Login information
    , LoginInfo(..)
    , serializeLoginInfo
    , deserializeLoginInfo
  -- * Client
    , Client
    , withClient
    , getDomains
    , getTalkRooms
    , getMe
    , getUsers
    , getAcquaintances
    , getCurrentDomain
    , getTalkUsers
  -- * Message
  -- ** Ids
    , DomainId
    , TalkId
    , UserId
    , MessageId
  -- ** Abstract types
  -- *** Domain
    , Domain
    , domainId
    , domainName
  -- *** Talk room
    , TalkRoom
    , talkId
    , talkType
    , talkUserIds
    , TalkType(..)
  -- *** User
    , User
    , userId
    , displayName
    , canonicalDisplayName
    , phoneticDisplayName
    , canonicalPhoneticDisplayName
  -- ** Message
    , Message(..)
    , YesNoQuestion(..)
    , YesNoAnswer(..)
    , SelectQuestion(..)
    , SelectAnswer(..)
    , TaskQuestion(..)
    , TaskAnswer(..)
    , ClosingType(..)
  -- * Sending
    , sendMessage
  -- ** File Upload
    , File(..)
    , UploadFile(..)
    , readToUpload
    , uploadFile
  -- * Talk Room
    , leaveTalkRoom
    , removeUserFromTalkRoom
  -- * Channel
  -- ** Creating channel
    , Channel
    , withChannel
  -- ** Channel IO
    , recv
    , send
  -- * Terminating
    , shutdown
  -- * Exceptions
    , Exception(..)
  -- * Notifications
    , NotificationHandlers
    , onNotifyCreateMessage
    , onNotifyAddTalkers
    , onNotifyAddAcquaintance
    , onNotifyDeleteTalk
    , onNotifyDeleteTalker
    , onNotifyDeleteAcquaintance
    , defaultNotificationHandlers
  -- * Utility
    , throttleDown
    , getSelectedAnswer
    )
where

import           Web.Direct.Api
import           Web.Direct.Client
import           Web.Direct.DirectRPC (throttleDown)
import           Web.Direct.Exception
import           Web.Direct.LoginInfo
import           Web.Direct.Message
import           Web.Direct.Types
import           Web.Direct.Upload
